module.exports = (lineman) ->
  config:
    copy:
      server:
        files: [
          expand: true
          cwd: "server"
          src: "**"
          dest: 'dist'
        ]