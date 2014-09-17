(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.exampleControllers = angular.module('exampleControllers', []);

  exportObj.exampleControllers.controller('RootCtrl', [
    '$scope', function($scope) {
      return $scope.foo = {
        'now': new Date().toString()
      };
    }
  ]);

  exportObj.exampleControllers.controller('ParamCtrl', [
    '$scope', '$routeParams', function($scope, $routeParams) {
      return $scope.id = $routeParams.id;
    }
  ]);

}).call(this);

//# sourceMappingURL=controllers.js.map
