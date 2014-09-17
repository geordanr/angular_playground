describe 'Example root controller', ->
  beforeEach module('exampleApp')

  it 'has a foo property in the root scope that has a now property', inject(($controller) ->
    scope = {}
    ctrl = $controller 'RootCtrl', {$scope: scope}

    scope.foo.should.have.property 'now'
  )

  it 'has an ID property in the param scope that matches the passed route param', inject(($controller) ->
    scope = {}
    routeParams =
      id: 'abc123'
    ctrl = $controller 'ParamCtrl',
      $scope: scope
      $routeParams: routeParams

    scope.id.should.equal 'abc123'
  )

