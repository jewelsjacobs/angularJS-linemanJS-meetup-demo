module.exports = (lineman) ->
  config:
    buildcontrol:
      options:
        dir: 'dist',
        commit: false,
        push: true,
        message: 'Built %sourceName% from commit %sourceCommit% on branch %sourceBranch%'
        tag: '<%= pkg.version %>'
      heroku:
        options:
          remote: 'git@heroku.demo:agile-gorge-2138.git',
          branch: 'master'