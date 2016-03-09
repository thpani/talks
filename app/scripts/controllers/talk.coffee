angular.module 'talksApp'
  .controller 'TalkCtrl', ($scope, $stateParams, Talk) ->
    $scope.value = Talk.findById
      id: $stateParams.id
