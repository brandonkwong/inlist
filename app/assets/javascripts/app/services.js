inlistApp.factory('Tag', ['$resource', function($resource) {
  return $resource(
    '/api/tags/:id',
    {id: '@id'},
    {update: {method: 'PATCH'}}
  );
}]);

inlistApp.factory('Item', ['$resource', function($resource) {
  return $resource(
    '/api/items/:id',
    {id: '@id'},
    {update: {method: 'PATCH'}}
  );
}]);