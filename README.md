# Demo for Austin AngularJS Meetup on how to use LinemanJS in an AngularJS app

This is a project template for Angular JS applications using [Lineman](http://www.linemanjs.com).

It includes the following features:

1. Template Precompilation into Angulars $templateCache using `grunt-angular-templates`
2. A basic login, logout service bound to sample routes inside `config/server.js`
3. A router, and 2 views `home` and `login`
4. A directive that shows a message on mouseover
5. 2 Controllers, for `home` and `login`, with $scope variables set and bound
6. A working, bound login form (username/password don't matter, but are required)
7. Configured [grunt-ngmin](https://github.com/btford/grunt-ngmin) so you don't have to fully qualify angular dependencies.
8. Auto generated [sourcemaps](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/) with inlined sources via [grunt-concat-sourcemap](https://github.com/kozy4324/grunt-concat-sourcemap) (you'll need to [enable sourcemaps](http://cl.ly/image/1d0X2z2u1E3b) in Firefox/Chrome to see this)
9. [Unit Tests](https://github.com/linemanjs/lineman-angular-template/tree/master/spec) and [End-to-End Tests](https://github.com/linemanjs/lineman-angular-template/tree/master/spec-e2e)
10. Configuration to run [Protractor](https://github.com/juliemr/protractor) for End-to-End Tests
11. [Docco](http://jashkenas.github.io/docco/) CoffeeScript documentation generator
12. Auto commit generated documentation to Github Pages.
13. [Restangular](https://github.com/mgonto/restangular) AngularJS module as opposed to $http or $resource
14. Simple Express backend API consumed via Lineman's server proxy
15. [Livereload plugin](https://github.com/linemanjs/lineman-livereload)
16. [Bower plugin](https://github.com/linemanjs/lineman-bower)

# Shown in Demo

1. Plugins
2. Configuration
3. AngularJS
4. Run / Build

# Instructions

1. `$ git clone git@github.com:jewelsjacobs/angularJS-linemanJS-meetup-demo.git my-lineman-app`
2. `$ cd my-lineman-app`
3. `$ sudo npm install -g lineman`
4. `$ sudo npm install -g bower`
5. `$ npm install`
6. `$ bower install`

# Running in development mode
1. `$ export NODE_ENV=development`
2. `$ node server/server.js`
3. `$ lineman run`
4. Your browser will open to localhost:8000

# Running in production mode
1. `$ export NODE_ENV=production`
2. `$ node dist/server.js`
3. `$ lineman build`
Note: This will deploy to heroku.
If you don't want to deploy to heroku, follow the instructions on commenting and uncommenting lines 29-33
in the `/config/application.coffee file
4. Open your browser to http://localhost:8000

# Deploy to Heroku
1. `$ cd my-lineman-app`
2. Follow the instructions on commenting and uncommenting lines 29-33
   in the `/config/application.coffee file
3. Follow the [instructions on Heroku for creating a heroku app](https://devcenter.heroku.com/articles/creating-apps) in your app folder.
4. Follow the [instructions under the Git subtree command section here](https://github.com/yeoman/yeoman/wiki/Deployment)
to deploy the `dist` folder separately.
5. `$ lineman build`

# Running Tests

This template was used as the basis of [@davemo](http://www.github.com/davemo)'s [Testing Strategies for Angular JS](http://www.youtube.com/watch?v=UYVcY9EJcRs) screencast, and contains all the tests we wrote in the screencast and a few more!

To run the unit tests:

1. `lineman run` from 1 terminal window
2. `lineman spec` from another terminal window, this will launch Testem and execute specs in Chrome

To run the end-to-end tests:

1. `npm install protractor`
2. `brew install selenium-server-standalone`
3. Make sure you have chrome installed.
4. `lineman run` from 1 terminal window
5. `lineman grunt spec-e2e` from another terminal window

  Troubleshooting:

    If you see this error: Warning: there's no selenium server jar at the specified location,
    you may need to change the selenium-server-standalone jar version in config/spec-e2e.js
    to the actual you see in /usr/local/opt/selenium-server-standalone (brew users may have a libexec directory).

    If you see this error: Fatal error: The path to the driver executable must be set by the
    webdriver.chrome.driver system property, you may need to download the chromedriver
    (https://code.google.com/p/selenium/wiki/ChromeDriver) and place it in /usr/local/bin (mac).

[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/jewelsjacobs/)
