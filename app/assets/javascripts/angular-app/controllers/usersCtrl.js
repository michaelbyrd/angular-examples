var app = angular.module('app.exampleApp')

app.controller('UsersCtrl', ['$scope', '$http', function($scope, $http) {
  $scope.names = [];

  $http.get('./users.json').success(function(data) {
    $scope.names = data;
  });
  $scope.addName = function() {
    $scope.names.push($scope.enteredName);
    $scope.enteredName = '';
  };
  $scope.removeName = function(name) {
    var i = $scope.names.indexOf(name);
    $scope.names.splice(i, 1);
  };
}]);
