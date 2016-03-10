angular.module 'talksApp'
  .controller 'TalkCtrl', ($scope, $stateParams, Talk) ->
    $scope.talk = Talk.findById
      id: $stateParams.id

    $scope.submit = ->
      $scope.talk.$save()
