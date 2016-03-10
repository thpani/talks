angular.module 'talksApp'
  .controller 'TalksCtrl', ($scope, Talk) ->
    $scope.gridOptions =
      columnDefs: [
        { field: 'title',
        cellTemplate: '<div><a ui-sref="talk({id: row.entity.id})">{{row.entity.title}}</a></div>'
        },
        { field: 'speaker' }
      ]
      data: Talk.find()
