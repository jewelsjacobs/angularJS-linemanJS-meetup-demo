module.exports = (lineman) ->
  config:
    coffeelint:
      app: [
        "app/js/**/*.coffee"
        "server/**/*.coffee"
        "spec/**/*.coffee"
        "spec-e2e/**/*.coffee"
        "config/**/*.coffee"
        "tasks/**/*.coffee"
      ]
      options:
        "max_line_length":
          level: "warn"
        "no_trailing_whitespace":
          level: "warn"