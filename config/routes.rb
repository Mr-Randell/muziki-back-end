Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :create]
end
