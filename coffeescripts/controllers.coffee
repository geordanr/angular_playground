exportObj = exports ? this

exportObj.exampleApp = angular.module 'exampleApp', []

exportObj.exampleApp.controller 'ExampleCtrl', ($scope) ->
  $scope.foo =
    'now': new Date().toString()
