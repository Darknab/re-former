Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  get"/users/:id", to: "users#show"
  
  
  resource :users, as: "users"

  get "/users/:id/edit", to: "users#edit" 
  # Defines the root path route ("/")
  # root "articles#index"
end
