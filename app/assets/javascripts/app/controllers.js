inlistApp.controller('InListCtrl', ['$scope', 'Tag', 'Item', function($scope, Tag, Item) {
  
  // Current User
  $scope.currentUser;

  // ngModel for Tag Query
  $scope.tagQuery = {name: ''};

  // Tag JSON
  $scope.tags = [];

  Tag.query(function(tags) {
    $scope.tags = tags;
  });

  // Item JSON
  $scope.items = [];
  $scope.userItems = [];

  Item.query(function(items) {

    // All Items
    $scope.items = items;

    // Current User Items
    var i = items.length;
    while (--i) {
      if (items[i].user_id === $scope.currentUser) {
        $scope.userItems.push(items[i])
      }
    }

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
