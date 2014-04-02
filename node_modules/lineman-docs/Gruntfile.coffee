"use strict"
markdown = require("marked")
semver = require("semver")
module.exports = (grunt) ->
  require("load-grunt-tasks") grunt
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    changelog:
      options:
        dest: "CHANGELOG.md"
        versionFile: "package.json"

    release:
      options:
        commitMessage: "<%= version %>"
        tagName: "v<%= version %>"
        bump: false # we have our own bump
        file: "package.json"

    stage:
      options:
        files: ["CHANGELOG.md"]

  grunt.registerTask "bump", "bump manifest version", (type) ->
    setup = (file, type) ->
      pkg = grunt.file.readJSON(file)
      newVersion = pkg.version = semver.inc(pkg.version, type or "patch")
      file: file
      pkg: pkg
      newVersion: newVersion
    options = @options(file: grunt.config("pkgFile") or "package.json")
    config = setup(options.file, type)
    grunt.file.write config.file, JSON.stringify(config.pkg, null, "  ") + "\n"
    grunt.log.ok "Version bumped to " + config.newVersion
    return

  grunt.registerTask "stage", "git add files before running the release task", ->
    files = @options().files
    grunt.util.spawn
      cmd: (if process.platform is "win32" then "git.cmd" else "git")
      args: ["add"].concat(files)
    , grunt.task.current.async()
    return

  grunt.registerTask "default", [
    "bump"
    "changelog"
    "stage"
    "release"
  ]
  return