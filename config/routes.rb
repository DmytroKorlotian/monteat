Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  resources :orders
  # resources :meal_orders
  get 'meal_orders' => 'meal_orders#index'
end
