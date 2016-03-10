angular.module 'talksApp'
  .controller 'TalkListCtrl', ($scope, Talk) ->
    $scope.gridOptions =
      columnDefs: [{
        field: 'title',
        cellTemplate: '<div class="ui-grid-cell-contents"><a ui-sref="talkEdit({id: row.entity.id})">{{row.entity.title}}</a></div>'
        },
        { field: 'speaker' },
        { 
          field: 'date_from',
          cellFilter: 'date:"short"'
        },
        {
          field: 'date_to',
          cellFilter: 'date:"short"'
        }
      ]
      data: Talk.find()

    $scope.gridOptions.onRegisterApi = (gridApi) ->
      $scope.gridApi = gridApi

      gridApi.selection.on.rowSelectionChanged $scope, (row) ->
        $scope.isSelected = $scope.gridApi.selection.getSelectedCount() > 0

      gridApi.selection.on.rowSelectionChangedBatch $scope, (rows) ->
        $scope.isSelected = $scope.gridApi.selection.getSelectedCount() > 0

    $scope.delete = ->
      angular.forEach $scope.gridApi.selection.getSelectedRows(), (data, index) ->
        Talk.deleteById id: data.id
        $scope.gridOptions.data.splice(index, 1)
      $scope.gridApi.selection.clearSelectedRows()
