Rails.application.routes.draw do
  resources :prayer_requests
  resources :friend_interactions
  resources :interactions
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
