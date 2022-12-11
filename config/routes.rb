Rails.application.routes.draw do
  #resources :user_authentications
  #resources :test
  resources :songs, only: [:index, :show, :create, :update, :destroy]
  resources :artists, only: [:index, :show, :create, :update, :destroy] do
    resources :songs
  end

  resources :users do
    resource :playlists, only: [:show]
  end

  resources :playlists do
     resources :songs
  end

  get "/charts/world", to: "test#all_songs"
  get "/charts/world/:id", to: "test#song"
  post "/login", to: "user_authentications#create"
  delete "/logout/:id", to: "user_authentications#destroy"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
