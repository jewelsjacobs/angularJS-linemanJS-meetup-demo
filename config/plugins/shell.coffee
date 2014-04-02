module.exports = (lineman) ->
  config:
    shell:
      heroku:
        options:
          stdout: true
        command: 'git subtree push --prefix dist heroku master'