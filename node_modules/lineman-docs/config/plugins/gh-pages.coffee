module.exports = (lineman) ->

  app = lineman.config.application

  config:
    loadNpmTasks: app.loadNpmTasks.concat("grunt-gh-pages")

    prependTasks:
      common: app.prependTasks.common.concat("gh-pages")

    'gh-pages':
      options:
        base: 'docs/'
      src: ['**']

