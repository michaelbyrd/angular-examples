angular.module('app.exampleApp').controller("NamesCtrl", [
  '$scope', '$http',
  ($scope, $http)->
    console.log 'NamesCtrl is running'
    $scope.users = ["me", "him"]

    $http.get('./users.json').success((data)
          $scope.users = data
    )
])


# angular.module('app.exampleApp').controller("NamesCtrl", [
#   '$scope',
#   ($scope)->
#     console.log 'NamesCtrl is running'
#     $scope.names = ['Larry', 'Curly', 'Moe']
#     $scope.addName = ->
#       $scope.names.push($scope.enteredName)
#       $scope.enteredName = ''
#
#     $scope.removeName = (name) ->
#       i = $scope.names.indexOf(name)
#       $scope.names.splice(i, 1)
#
#     $scope.exampleValue = "Hello angular and rails"
#
# ])
