inlistApp.directive('ngBackgroundImage', function () {
  return function (scope, element, attrs) {
    scope.$watch(attrs.ngBackgroundImage, function(image) {
      element.css({
        'background-image': 'url(' + image + ')',
        'background-size': 'cover',
        'background-repeat': 'no-repeat',
        'background-position': 'center center'
      });
    });
  };
});