describe 'Controller: TalkListCtrl', () ->

  # load the controller's module
  beforeEach(module('talksApp'))

  # Initialize the controller and a mock scope
  beforeEach(inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TalkListCtrl = $controller 'TalkListCtrl',
      $scope: scope
      # place here mocked dependencies
  )

  it 'should attach a list of awesomeThings to the scope', () ->
    # expect(TalkCtrl.awesomeThings.length).toBe 3
