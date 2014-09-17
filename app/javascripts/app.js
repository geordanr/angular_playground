(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.exampleApp = angular.module('exampleApp', ['ngRoute', 'exampleControllers']);

  exportObj.exampleApp.config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/', {
        templateUrl: 'partials/root.html',
        controller: 'RootCtrl'
      }).when('/foo/:id', {
        templateUrl: 'partials/param.html',
        controller: 'ParamCtrl'
      }).otherwise({
        redirectTo: '/'
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=app.js.map
