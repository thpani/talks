angular.module 'talksApp'
  .controller 'TalkCreateCtrl', ($scope, $state, $stateParams, Talk) ->
    $scope.talk = {}

    $scope.submit = ->
      Talk.create($scope.talk)
      $state.go 'talkList'
