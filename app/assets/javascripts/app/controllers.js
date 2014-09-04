inlistApp.controller('InListCtrl', ['$scope', 'Tag', function($scope, Tag) {
  // ngModel for Tag Query
  $scope.tagQuery = {name: ''};

  // Tag JSON
  $scope.tags = [];
  Tag.query(function(tags) {
    $scope.tags = tags;
  });

  // // ngInfiniteScroll demo testing
  // $scope.images = [1];

  // $scope.loadMore = function() {
  //   var last = $scope.images[$scope.images.length - 1];
  //   for(var i = 1; i <= 8; i++) {
  //     $scope.images.push(last + i);

  //     console.log($scope.images.length);
  //   }
  // };

}]);
