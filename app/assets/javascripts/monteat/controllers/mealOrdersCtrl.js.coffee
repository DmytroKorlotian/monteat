angular.module('app').controller 'mealOrdersCtrl', [
  '$scope', 'Restaurant', 'Meal'
  ($scope, Restaurant, Meal) ->
    console.log 'ExampleCtrl running'
    $scope.restaurants = []
    $scope.meals = []
    $scope.chosenRestaurant = null
    $scope.chosenMeal = null
    $scope.init = ->
      Restaurant.index().then (data) ->
        $scope.restaurants = data
      Meal.index().then (data) ->
        $scope.meals = data
]
