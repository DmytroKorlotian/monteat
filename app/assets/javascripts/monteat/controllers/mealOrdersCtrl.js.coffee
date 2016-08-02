angular.module('app').controller 'mealOrdersCtrl', [
  '$scope', 'Restaurant', 'Meal', 'MealOrder'
  ($scope, Restaurant, Meal, MealOrder) ->

    $scope.restaurants = []
    $scope.meals = []

    $scope.todaysOrder = null

    $scope.choice = {}
    $scope.flash = {}

    $scope.fetchRestaurants = ->
      Restaurant.index().then (data) ->
        $scope.restaurants = data

    $scope.fetchMeals = (restaurant_id) ->
      Meal.show(restaurant_id).then (data) ->
        $scope.meals = data

    $scope.fetchOrders = () ->
      $scope.fetchTodaysOrder()

    $scope.fetchTodaysOrder = ->
      MealOrder.fetch_todays_order().then (data) ->
        $scope.todaysOrder = data

    $scope.createMealOrder = (chosenItems) ->
      MealOrder.create(chosenItems.meal.id).then (data) ->
        if data.error
          $scope.flash.alert = data.error
        else
          $scope.flash.notice = 'Your meal order was successfuly created!'
        return data
]
