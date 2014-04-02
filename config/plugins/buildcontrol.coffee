module.exports = (lineman) ->
  config:
    buildcontrol:
      options:
        dir: 'dist',
        commit: true,
        push: true,
        message: 'Built %sourceName% from commit %sourceCommit% on branch %sourceBranch%'
      heroku:
        options:
          remote: 'git@heroku.demo:agile-gorge-2138.git',
          branch: 'master',
          tag: '<%= pkg.version %>'