# Exports a function which returns an object that overrides the default &
# *   plugin file patterns (used widely through the app configuration)
# *
# * To see the default definitions for Lineman's file paths and globs, see:
# *
# *   - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
# 
module.exports = (lineman) ->
  
  #Override file patterns here
  js:
    vendor: [
      "vendor/bower/jquery/dist/jquery.js"
      "vendor/bower/lodash/dist/lodash.js"
      "vendor/bower/foundation/js/foundation.js"
      "vendor/bower/angular/angular.js"
      "vendor/bower/angular-route/angular-route.js"
      "vendor/bower/angular-cookies/angular-cookies.js"
      "vendor/bower/angular-mocks/angular-mocks.js"
      "vendor/bower/angular-resource/angular-resource.js"
      "vendor/bower/angular-sanitize/angular-sanitize.js"
      "vendor/bower/angular-scenario/angular-scenario.js"
      "vendor/bower/restangular/dist/restangular.js"
      "vendor/js/**/*.js"
    ]

  less:
    compile:
      options:
        paths: [
          "app/css/**/*.less"
        ]

  css:
    vendor: [
      "vendor/bower/foundation/css/normalize.css"
      "vendor/bower/foundation/css/foundation.css"
      "vendor/css/**/*.css"
    ]
