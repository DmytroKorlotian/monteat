angular.module('app').service 'Meal', [
  '$http'
  ($http) ->
    index: ->
      $http.get('/meals.json').then (e) ->
        e.data
]
