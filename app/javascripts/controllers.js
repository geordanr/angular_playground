(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.exampleApp = angular.module('exampleApp', []);

  exportObj.exampleApp.controller('ExampleCtrl', function($scope) {
    return $scope.foo = {
      'now': new Date().toString()
    };
  });

}).call(this);

//# sourceMappingURL=controllers.js.map
