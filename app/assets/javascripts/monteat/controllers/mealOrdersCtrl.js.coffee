angular.module('app').controller 'mealOrdersCtrl', [
  '$scope', 'Restaurant', 'Meal', 'MealOrder'
  ($scope, Restaurant, Meal, MealOrder) ->

    $scope.restaurants = []
    $scope.meals = []
    $scope.archivedOrders = []

    $scope.todaysOrder = null
    $scope.todaysOrderMessage = null
    $scope.archivedOrdersMessage = null

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
      $scope.fetchArchivedOrders()

    $scope.fetchTodaysOrder = ->
      MealOrder.fetch_todays_order().then (data) ->
        if data.message
          $scope.todaysOrderMessage = data.message
        else
          $scope.todaysOrder = data

    $scope.fetchArchivedOrders = ->
      MealOrder.fetch_archived_orders().then (data) ->
        if data.message
          $scope.archivedOrdersMessage = data.message
        else
          $scope.archivedOrders = data

    $scope.createMealOrder = (chosenItems) ->
      MealOrder.create(chosenItems.meal.id).then (data) ->
        if data.error
          $scope.flash.alert = data.error
        else
          $scope.flash.notice = 'Your meal order was successfuly created!'
        return data
]
