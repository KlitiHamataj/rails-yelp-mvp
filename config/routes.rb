Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all restaurants
  # get '/restaurants', to: 'restaurants#index'
  # # Create a new restaurant
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'
  # # Read one restaurant
  # get '/restaurants/:id', to: 'restaurants#show'
  # Add a new review
  # get 'restaurants/restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/restaurant_id/reviews', to: 'reviews#create'
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
