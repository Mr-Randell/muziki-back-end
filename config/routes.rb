Rails.application.routes.draw do
  resources :songs
  resources :artists, only: [:index, :show, :create, :update, :destroy]
end
