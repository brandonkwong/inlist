inlistApp.filter('row', function() {
  return function(arrayLength) {
    arrayLength = Math.ceil(arrayLength);
    var arr = new Array(arrayLength);
    for (var i = 0; i < arrayLength; i++) {
      arr[i] = i;
    }
    return arr;
  };
});