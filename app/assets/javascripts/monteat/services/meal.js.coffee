angular.module('app').service 'Meal', [
  '$http'
  ($http) ->
    index: ->
      $http.get('/meals.json').then (e) ->
        e.data
    show: (restaurant_id) ->
      $http.get("/meals/#{restaurant_id}.json").then (e) ->
        e.data
]
