module.exports = (lineman) ->
  config:
    copy:
      server:
        files: [
          expand: true
          cwd: "./"
          src: "package.json"
          dest: 'server'
        ]