# fixes angular-route bug
module.exports = (lineman) ->
  config:
    uglify:
      options:
        mangle: false
        except: ['angular']
