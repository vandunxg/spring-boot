#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_REMOTE="upstream"
UPSTREAM_BRANCH="main"
SOURCE_PATH="documentation/spring-boot-docs/src/docs/antora"
TARGET_PATH="upstream"
VERSION_FILE=".upstream-version"

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

if [[ -n "$(git status --porcelain -- "$TARGET_PATH" "$VERSION_FILE")" ]]; then
  fail "'$TARGET_PATH/' or '$VERSION_FILE' has uncommitted changes. Commit/stash them before syncing."
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

if [[ -n "$old_rev" ]] && git cat-file -e "${old_rev}^{commit}" 2>/dev/null; then
  info "Upstream docs changed since last sync:"
  git diff --name-status "$old_rev" "$new_rev" -- "$SOURCE_PATH" || true
  printf '\n'
fi

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

info "Extracting docs only from $new_rev..."
git archive "$new_rev" "$SOURCE_PATH" | tar -x -C "$tmp_dir"

source_dir="$tmp_dir/$SOURCE_PATH"
[[ -d "$source_dir" ]] || fail "Upstream docs path not found: $SOURCE_PATH"

mkdir -p "$TARGET_PATH"

# Keep the upstream docs tree as an exact mirror.
# --delete is intentional: files removed upstream are removed locally too.
rsync -a --delete "$source_dir/" "$TARGET_PATH/"

printf '%s\n' "$new_rev" > "$VERSION_FILE"

info "Sync complete."
if [[ -n "$old_rev" ]]; then
  info "$old_rev -> $new_rev"
else
  info "Initial upstream revision: $new_rev"
fi

printf '\nChanged local upstream docs:\n'
git status --short -- "$TARGET_PATH" "$VERSION_FILE"

printf '\nDiff summary:\n'
git diff --stat -- "$TARGET_PATH" "$VERSION_FILE"

printf '\nFiles to review/translate:\n'
git diff --name-status -- "$TARGET_PATH" || true
