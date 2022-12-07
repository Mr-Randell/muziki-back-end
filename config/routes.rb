Rails.application.routes.draw do
  #resources :user_authentications

  resources :songs, only: [:index, :show, :create, :update, :destroy]
  resources :artists, only: [:index, :show, :create, :update, :destroy]

  resources :users

  resources :playlists

  post "/login", to: "user_authentications#create"
  delete "/logout/:id", to: "user_authentications#destroy"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
