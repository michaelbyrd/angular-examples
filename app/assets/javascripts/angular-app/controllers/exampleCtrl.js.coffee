angular.module('app.exampleApp').controller("ExampleCtrl", [
  '$scope',
  ($scope)->
    console.log 'ExampleCtrl running'
    $scope.names = ['Larry', 'Curly', 'Moe']
    $scope.addName = ->
      $scope.names.push($scope.enteredName)
      $scope.enteredName = ''

    $scope.removeName = (name) ->
      i = $scope.names.indexOf(name)
      $scope.names.splice(i, 1);

    $scope.exampleValue = "Hello angular and rails"

])

