module.exports = (lineman) ->
  config:
    shell:
      options:
        stdout: true
      command: "git subtree push --prefix dist heroku master"