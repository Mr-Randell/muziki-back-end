Rails.application.routes.draw do
  #resources :user_authentications

  resources :users

  resources :playlists

  post "/login", to: "user_authentications#create"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
