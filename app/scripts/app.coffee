angular.module('talksApp', [
  'ngRoute',
  'lbServices',
  'ui.grid',
  'ui.router'
])
.config ['$stateProvider', '$urlRouterProvider',
($stateProvider, $urlRouterProvider) ->
  $stateProvider
    .state 'talks',
      url: '/talks'
      templateUrl: 'talks.html'
      controller: 'TalksCtrl'
    .state 'talk',
      url: '/talk/:id'
      templateUrl: 'talk.html'
      controller: 'TalkCtrl'

  $urlRouterProvider.otherwise '/talks'
]
