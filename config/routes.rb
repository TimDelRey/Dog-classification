Rails.application.routes.draw do
  resources :dog_sizes do
    resources :breeds, shallow: true
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dog_sizes#index"
end
