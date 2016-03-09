'use strict';

// Declare app level module which depends on views, and components
angular.module('talksApp', [
  'ngRoute'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.
    when('/talk', {
      templateUrl: 'talk.html',
      controller: 'TalkCtrl'
    }).
    otherwise({
      redirectTo: '/talk'
    });
}]);
