Rails.application.routes.draw do
  resources :breeds
  resources :dog_sizes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dog_sizes#index"
end
