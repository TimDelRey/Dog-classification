Rails.application.routes.draw do
  get "/breeds/random", to: "breeds#random"

  resources :dog_sizes do
    resources :breeds, shallow: true do
      # collection do
      #   get :random
      # end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dog_sizes#index"
end
