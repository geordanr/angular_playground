exportObj = exports ? this

exportObj.exampleControllers = angular.module 'exampleControllers', []

exportObj.exampleControllers.controller 'RootCtrl', [
  '$scope', ($scope) ->
    $scope.foo =
      'now': new Date().toString()
]

exportObj.exampleControllers.controller 'ParamCtrl', [
  '$scope', '$routeParams', ($scope, $routeParams) ->
    $scope.id = $routeParams.id
]
