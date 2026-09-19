#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_REMOTE="upstream"
UPSTREAM_BRANCH="main"
TARGET_ROOT="upstream"
VERSION_FILE=".upstream-version"

# Antora component roots, mirrored as-is. "<source path>|<target path>".
COMPONENT_MIRRORS=(
  "documentation/spring-boot-docs/src/docs/antora|upstream/docs"
  "build-plugin/spring-boot-maven-plugin/src/docs/antora|upstream/maven-plugin"
  "build-plugin/spring-boot-gradle-plugin/src/docs/antora|upstream/gradle-plugin"
)

# Sample code the docs pull in through include-code:: and include::example$.
# Upstream's Gradle build copies it into the example family of the ROOT module;
# mirror it to the same place. Targets are nested inside a component mirror, so
# these are synced after the component mirrors above.
EXAMPLE_MIRRORS=(
  "documentation/spring-boot-docs/src/main/java|upstream/docs/modules/ROOT/examples/java"
  "documentation/spring-boot-docs/src/main/kotlin|upstream/docs/modules/ROOT/examples/kotlin"
  "documentation/spring-boot-docs/src/main/resources|upstream/docs/modules/ROOT/examples/resources"
)

ALL_MIRRORS=("${COMPONENT_MIRRORS[@]}" "${EXAMPLE_MIRRORS[@]}")

source_paths() {
  local entry
  for entry in "${ALL_MIRRORS[@]}"; do
    printf '%s\n' "${entry%%|*}"
  done
}

info() {
  printf '[sync-docs] %s\n' "$*"
}

fail() {
  printf '[sync-docs] ERROR: %s\n' "$*" >&2
  exit 1
}

repo_root="$(git rev-parse --show-toplevel 2>/dev/null)" || fail "Run this script inside the Git repository."
cd "$repo_root"

if ! git remote get-url "$UPSTREAM_REMOTE" >/dev/null 2>&1; then
  fail "Remote '$UPSTREAM_REMOTE' does not exist. Add it with: git remote add upstream https://github.com/spring-projects/spring-boot.git"
fi

if [[ -n "$(git status --porcelain -- "$TARGET_ROOT" "$VERSION_FILE")" ]]; then
  fail "'$TARGET_ROOT/' or '$VERSION_FILE' has uncommitted changes. Commit/stash them before syncing."
fi

info "Fetching $UPSTREAM_REMOTE/$UPSTREAM_BRANCH..."
git fetch "$UPSTREAM_REMOTE" "$UPSTREAM_BRANCH" --prune

new_rev="$(git rev-parse "$UPSTREAM_REMOTE/$UPSTREAM_BRANCH")"
old_rev=""
if [[ -f "$VERSION_FILE" ]]; then
  old_rev="$(tr -d '[:space:]' < "$VERSION_FILE")"
fi

if [[ -n "$old_rev" && "$old_rev" == "$new_rev" ]]; then
  info "Already up to date: $new_rev"
  exit 0
fi

mapfile -t paths < <(source_paths)

if [[ -n "$old_rev" ]] && git cat-file -e "${old_rev}^{commit}" 2>/dev/null; then
  info "Upstream docs changed since last sync:"
  git diff --name-status "$old_rev" "$new_rev" -- "${paths[@]}" || true
  printf '\n'
fi

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

info "Extracting docs only from $new_rev..."
git archive "$new_rev" "${paths[@]}" | tar -x -C "$tmp_dir"

# Keep every mirrored tree an exact copy of its upstream source.
# --delete is intentional: files removed upstream are removed locally too.
sync_mirror() {
  local source_path="$1" target_path="$2"
  local source_dir="$tmp_dir/$source_path"
  [[ -d "$source_dir" ]] || fail "Upstream path not found: $source_path"
  mkdir -p "$target_path"
  rsync -a --delete "$source_dir/" "$target_path/"
  info "  $source_path -> $target_path"
}

for entry in "${COMPONENT_MIRRORS[@]}"; do
  sync_mirror "${entry%%|*}" "${entry##*|}"
done
for entry in "${EXAMPLE_MIRRORS[@]}"; do
  sync_mirror "${entry%%|*}" "${entry##*|}"
done

printf '%s\n' "$new_rev" > "$VERSION_FILE"

info "Sync complete."
if [[ -n "$old_rev" ]]; then
  info "$old_rev -> $new_rev"
else
  info "Initial upstream revision: $new_rev"
fi

printf '\nChanged local upstream docs:\n'
git status --short -- "$TARGET_ROOT" "$VERSION_FILE"

printf '\nDiff summary:\n'
git diff --stat -- "$TARGET_ROOT" "$VERSION_FILE"

printf '\nFiles to review/translate:\n'
git diff --name-status -- "$TARGET_ROOT" || true
