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
      controller: 'TalkListCtrl'
    .state 'talk',
      url: '/talks/:id/edit'
      templateUrl: 'talk-edit.html'
      controller: 'TalkEditCtrl'

  $urlRouterProvider.otherwise '/talks'
]
