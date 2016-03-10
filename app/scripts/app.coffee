angular.module('talksApp', [
  'ngRoute',
  'lbServices',
  'ui.grid',
  'ui.router',
  'ui.bootstrap.datetimepicker',
  'ui.dateTimeInput'
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
    .state 'talkNew',
      url: '/talks/new'
      templateUrl: 'talk-add.html'
      controller: 'TalkCreateCtrl'

  $urlRouterProvider.otherwise '/talks'
]
