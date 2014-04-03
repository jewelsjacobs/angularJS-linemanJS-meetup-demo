# Exports a function which returns an object that overrides the default &
# *   plugin grunt configuration object.
# *
# * You can familiarize yourself with Lineman's defaults by checking out:
# *
# *   - https://github.com/linemanjs/lineman/blob/master/config/application.coffee
# *   - https://github.com/linemanjs/lineman/blob/master/config/plugins
# *
# * You can also ask Lineman's about config from the command line:
# *
# *   $ lineman config #=> to print the entire config
# *   $ lineman config concat.js #=> to see the JS config for the concat task.
# 
module.exports = (lineman) ->

  removeTasks:
    common: [
      "handlebars"
      "lint"
      "jshint"
      "sass"
      "jst"
    ]

  appTasks:
    dev: ["server", "open", "watch"]

  appendTasks:
# uncomment this line to deploy to heroku
#    dist: ["copy:server", "shell"]

# comment this line to deploy to heroku
    dist: ["copy:server"]