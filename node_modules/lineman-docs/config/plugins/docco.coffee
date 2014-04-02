module.exports = (lineman) ->

  app = lineman.config.application

  config:
    loadNpmTasks: app.loadNpmTasks.concat("grunt-docco")

    prependTasks:
      common: app.prependTasks.common.concat("docco")

    clean:
      docs:
        src: "docs"

    docco:
      src: '<%= files.coffee.app %>'
      options:
        output: 'docs/'

    watch:
      docco:
        files: "<%= files.coffee.app %>",
        tasks: ["docco"]

