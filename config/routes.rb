Rails.application.routes.draw do
  root 'archives#index'
  resources :archives, only: [:index, :create]
end
