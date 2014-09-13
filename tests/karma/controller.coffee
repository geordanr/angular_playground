describe 'Example controller', ->
  beforeEach module('exampleApp')

  it 'has a foo property in the scope that has a now property', inject(($controller) ->
    scope = {}
    ctrl = $controller 'ExampleCtrl', {$scope: scope}

    scope.foo.should.have.property 'now'
  )
    
