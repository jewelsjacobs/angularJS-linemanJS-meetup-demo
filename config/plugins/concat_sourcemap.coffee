module.exports = (lineman) ->
  config:
    concat_sourcemap:
      js:
        src: [
          "<%= files.js.vendor %>"
          "<%= files.coffee.generated %>"
          "<%= files.js.app %>"
          "<%= files.ngtemplates.dest %>"
        ]