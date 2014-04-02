module.exports = (lineman) ->
  config:
    loadNpmTasks: lineman.config.application.loadNpmTasks.concat('grunt-coffeelint')

    prependTasks:
      common: lineman.config.application.prependTasks.common.concat('coffeelint')

    coffeelint:
      app: ["<%= files.coffee.app %>", "<%= files.coffee.spec %>"]

    watch:
      coffeelint:
        files: ["<%= files.coffee.app %>", "<%= files.coffee.spec %>"]
        tasks: ["coffeelint"]
