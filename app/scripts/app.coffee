angular.module('talksApp', [
  'ngRoute',
  'lbServices',
  'ui.grid',
  'ui.router'
])
.config ['$stateProvider', '$urlRouterProvider',
($stateProvider, $urlRouterProvider) ->
  $stateProvider
    .state 'talkList',
      url: '/talks'
      templateUrl: 'talks.html'
      controller: 'TalkListCtrl'
    .state 'talkEdit',
      url: '/talks/:id/edit'
      templateUrl: 'talk-edit.html'
      controller: 'TalkEditCtrl'

  $urlRouterProvider.otherwise '/talks'
]
