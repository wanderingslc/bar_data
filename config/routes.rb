Rails.application.routes.draw do
  get 'import/index'
  post 'import/import'
  resources :locations
  devise_for :users
  resources :license_types
  get 'pages/homepage'
  post 'pages/homepage', to: 'pages#homepage'
  get 'geolocate', to: 'pages#geolocate'
  root to: 'pages#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
