angular.module 'talksApp'
  .controller 'TalkListCtrl', ($scope, Talk) ->
    $scope.gridOptions =
      columnDefs: [
        {
          field: 'title',
          cellTemplate: '<div class="ui-grid-cell-contents"><a ui-sref="talkEdit({id: row.entity.id})">{{row.entity.title}}</a></div>'
        },
        { field: 'speaker' }
      ]
      data: Talk.find()
