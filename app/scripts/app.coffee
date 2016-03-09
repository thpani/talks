angular.module('talksApp', [
  'ngRoute',
  'lbServices'
]).
config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/talk',
      templateUrl: 'talk.html'
      controller: 'TalkCtrl'
    .otherwise
      redirectTo: '/talk'
]
