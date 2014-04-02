# lineman-docs

This is a plugin to make it easy to use [docco](http://jashkenas.github.io/docco/) and [gh-pages](https://github.com/tschaub/grunt-gh-pages) with
[Lineman](http://linemanjs.com) app.

## Installation

Add the plugin to your lineman project:

```
$ npm install lineman-docs --save-dev
```

## Usage

`lineman-docs` will document all of your CoffeeScript defined in `files.coffee.app` of your Lineman configuration. By default, Lineman configures this to `app/js/**/*.coffee`.

To override the files, update the value of docs.src within `config/application.js`:
```bash
module.exports = function(lineman){
  return {
    docco: {
      src: ["app/js/**/*.coffee"]
    }
  }
};
```