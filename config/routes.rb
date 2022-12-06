Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :create, :update, :destroy]
end
