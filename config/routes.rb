Rails.application.routes.draw do
  resources :license_types
  get 'pages/homepage'
  root to: 'pages#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
