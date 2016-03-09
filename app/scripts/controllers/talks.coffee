angular.module 'talksApp'
  .controller 'TalksCtrl', ($scope, Talk) ->
    $scope.gridOptions =
      columnDefs: [
        field: 'id'
        cellTemplate: '<div><a ui-sref="talk({id: row.entity.id})">{{row.entity.title}}</a></div>'
        ,
        { field: 'title' },
        { field: 'speaker' }
      ]
      data: Talk.find()
