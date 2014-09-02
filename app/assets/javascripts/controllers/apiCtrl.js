inlistApp.controller('InListCtrl', ['$scope', '$http', function($scope, $http) {

  $scope.taggings = function() {
    var data = $http.get('/api/' + $scope.tagQuery).success(function(data, status, headers, config) {
      $scope.data = data;
    });
  };

}]);