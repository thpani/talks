angular.module 'talksApp'
  .controller 'TalkCtrl', ($scope, Talk) ->
    $scope.value = Talk.find()
