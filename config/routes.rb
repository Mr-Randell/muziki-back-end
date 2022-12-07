Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :create, :update, :destroy]
  resources :tests, only: [:index, :show, :create, :update, :destroy]
  resources :artists, only: [:index, :show, :create, :update, :destroy]
end
