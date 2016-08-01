angular.module('app').controller 'mealOrdersCtrl', [
  '$scope', 'Restaurant', 'Meal'
  ($scope, Restaurant, Meal) ->
    console.log 'ExampleCtrl running'
    $scope.restaurants = []
    $scope.meals = []
    $scope.choice = {}
    $scope.init = ->
      Restaurant.index().then (data) ->
        $scope.restaurants = data
    $scope.fetchMeals = (restaurant_id) ->
      Meal.show(restaurant_id).then (data) ->
        $scope.meals = data
]
