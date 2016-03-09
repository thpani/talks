angular.module('talksApp', [
  'ngRoute',
  'lbServices',
  'ui.grid'
]).
config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/talks',
      templateUrl: 'talks.html'
      controller: 'TalksCtrl'
    .when '/talk',
      templateUrl: 'talk.html'
      controller: 'TalkCtrl'
    .otherwise
      redirectTo: '/talks'
]
