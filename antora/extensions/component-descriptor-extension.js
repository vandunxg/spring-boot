'use strict'

/**
 * Applies component descriptor values to the aggregated component versions.
 *
 * `upstream/docs/antora.yml` is a read-only mirror and its descriptor
 * deliberately carries no `title` or `nav` key: the Spring Boot Gradle build
 * injects those when it generates the descriptor. This fork has no Gradle
 * build, so the same values are supplied from the playbook instead of being
 * patched into the mirror.
 *
 * `display_version` replaces the branch name Antora derives from
 * `version: true` with something meaningful in the navigation sidebar. It
 * applies to every listed component, since both locales are built from the same
 * mirrored upstream revision.
 *
 * Playbook configuration:
 *
 *   - require: ./antora/extensions/component-descriptor-extension.js
 *     display_version: '4.2.0-SNAPSHOT'
 *     components:
 *     - name: boot
 *       title: Spring Boot
 *       nav:
 *       - nav.adoc
 *     - name: vi
 */
module.exports.register = function ({ config = {} }) {
  const { components, displayVersion } = config
  if (!Array.isArray(components) || !components.length) {
    throw new Error('component-descriptor-extension requires a non-empty components list')
  }
  components.forEach(({ name }) => {
    if (!name) throw new Error('each component of component-descriptor-extension requires a name')
  })

  this.once('contentAggregated', ({ contentAggregate }) => {
    components.forEach(({ name, title, nav }) => {
      const entries = contentAggregate.filter((entry) => entry.name === name)
      if (!entries.length) {
        throw new Error(`component-descriptor-extension: no content source declares the component ${name}`)
      }
      entries.forEach((entry) => {
        if (title !== undefined) entry.title = title
        // Copy: the playbook config is frozen and Antora annotates the nav list.
        if (nav !== undefined) entry.nav = Array.from(nav)
        if (displayVersion !== undefined) entry.displayVersion = displayVersion
      })
    })
  })
}
