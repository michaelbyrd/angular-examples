var app = angular.module('app.exampleApp')

app.controller('UsersCtrl', ['$scope', '$http', function($scope, $http) {
  console.log("UsersCtrl is running")

  $scope.names = [];

  $http.get('./users.json').success(function(data) {
    $scope.users = data;
  });



  $scope.addUser = function() {
    $scope.user = { name: $scope.enteredName, email: $scope.enteredEmail }
    $http.post('/users', $scope.user).
    success(function(data, status, headers, config) {
      console.log("successful post");
    })
  }




  // $scope.addName = function() {
  //   $scope.names.push($scope.enteredName);
  //   $scope.enteredName = '';
  // };
  // $scope.removeName = function(name) {
  //   var i = $scope.names.indexOf(name);
  //   $scope.names.splice(i, 1);
  // };
}]);
