module.exports = (lineman) ->
  config:
    docco:
      src: [
        "app/js/**/*.coffee"
      ]
      options:
        output: 'docs/'