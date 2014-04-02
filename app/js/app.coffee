angular.module("app", [
  "ngResource"
  "ngRoute"
  "restangular"
]).run ($rootScope, Restangular) ->
  
  # adds some basic utilities to the $rootScope for debugging purposes
  $rootScope.log = (thing) ->
    console.log thing

  $rootScope.alert = (thing) ->
    alert thing

