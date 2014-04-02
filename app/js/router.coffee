angular.module("app").config ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when "/login",
    templateUrl: "login.html"
    controller: "LoginController"

  $routeProvider.when "/home",
    templateUrl: "home.html"
    controller: "HomeController"

  $routeProvider.when "/list-of-books",
    templateUrl: "books.html"
    controller: "BooksController"

  $routeProvider.otherwise redirectTo: "/login"
  return

