# lineman-coffeelint

Provide CoffeeLint functionality to your [Lineman](http://linemanjs.com) application. This plugin uses the [grunt-coffeelint](https://github.com/vojtajina/grunt-coffeelint) task and will perform a [CoffeeLint](http://www.coffeelint.org/) check on all CoffeeScript files within your application.

## Installation


```bash
$ npm install lineman-coffeelint --save-dev
```

## Usage

`lineman-coffeelint` will check all of your CoffeeScript defined in `files.coffee.app` of your Lineman configuration. By default, Lineman configures this to `app/js/**/*.coffee`.

To override the files, update the value of coffeelint.app within `config/application.js`:
```bash
module.exports = function(lineman){
  return {
    coffeelint: {
      app: ["app/js/**/*.coffee"]
    }
  }
};
```

## License

lineman-coffeelint is copyright of Arana Software, released under the [BSD License](http://opensource.org/licenses/BSD-3-Clause).