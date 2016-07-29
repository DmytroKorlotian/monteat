angular.module('app').service 'Restaurant', [
  '$http'
  ($http) ->
    index: ->
      $http.get('/restaurants.json').then (e) ->
        e.data
]
