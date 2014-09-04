inlistApp.filter('array', function() {
  return function(arrayLength) {
    arrayLength = Math.ceil(arrayLength);
    var arr = new Array(arrayLength), i = 0;
    for (; i < arrayLength; i++) {
      arr[i] = i;
    }
    return arr;
  };
});