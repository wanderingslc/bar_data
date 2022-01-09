Rails.application.routes.draw do
  get 'import/index'
  post 'import/import'
  resources :locations
  devise_for :users
  resources :license_types
  get 'pages/homepage'
  root to: 'locations#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
