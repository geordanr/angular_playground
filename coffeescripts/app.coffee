exportObj = exports ? this

exportObj.exampleApp = angular.module 'exampleApp', [
  'ngRoute'
  'exampleControllers'
]

exportObj.exampleApp.config [
  '$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'partials/root.html'
        controller: 'RootCtrl'
      .when '/foo/:id',
        templateUrl: 'partials/param.html'
        controller: 'ParamCtrl'
    .otherwise
      redirectTo: '/'
]
