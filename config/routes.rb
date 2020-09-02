Rails.application.routes.draw do
  root 'archives#index'
  resources :archives, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end