Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/contact'
  get 'pages/about'

  resources :consultants
  resources :reviews
  resources :services

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
