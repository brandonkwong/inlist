inlistApp.controller('InListCtrl', ['$scope', 'Tag', function($scope, Tag) {

  $scope.tags = {};

  Tag.query(function(json) {
    $scope.tags = json;
  });

  // ngInfiniteScroll demo testing
  $scope.images = [1];

  $scope.loadMore = function() {
    var last = $scope.images[$scope.images.length - 1];
    for(var i = 1; i <= 8; i++) {
      $scope.images.push(last + i);

      console.log($scope.images.length);
    }
  };

  // Tag.get
  // Tag.update

  $scope.tagQuery = {name: ''};

}]);
