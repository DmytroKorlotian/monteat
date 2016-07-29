angular.module('app').controller 'mealOrdersCtrl', [
  '$scope', 'Restaurant'
  ($scope, Restaurant) ->
    console.log 'ExampleCtrl running'
    $scope.restaurants = []
    $scope.init = ->
      Restaurant.index().then (data) ->
        $scope.restaurants = data
]
