Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  resources :orders
  resources :meal_orders do
    collection do
      get 'recent'
      get 'archived'
    end
  end
  resources :restaurants, only: [:index]
  resources :meals, only: [:index, :show]
end
