module.exports = (lineman) ->
  config:
    buildcontrol:
      options:
        dir: 'dist',
        commit: false,
        push: true,
        message: 'Built %sourceName% from commit %sourceCommit% on branch %sourceBranch%'
      heroku:
        options:
          remote: 'git@heroku.com:agile-gorge-2138.git',
          branch: 'master',
          tag: '<%= pkg.version %>'