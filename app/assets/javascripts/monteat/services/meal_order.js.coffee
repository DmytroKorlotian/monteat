angular.module('app').service 'MealOrder', [
  '$http'
  ($http) ->
    create: (meal_id) ->
      meal_order_params = {meal_id: meal_id}
      $http.post("/meal_orders.json", meal_order: meal_order_params).then (e) ->
        e.data
    fetch_todays_order: ->
      $http.get("/meal_orders/recent.json").then (e) ->
        e.data
    fetch_archived_orders: ->
      $http.get("/meal_orders/archived.json").then (e) ->
        e.data
]
