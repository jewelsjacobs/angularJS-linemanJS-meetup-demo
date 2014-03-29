module.exports = (lineman) ->
  config:
    docco:
      src: [
        "app/js/**/*.coffee"
        "server/**/*.coffee"
      ]
      options:
        output: 'docs/'