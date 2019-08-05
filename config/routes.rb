Rails.application.routes.draw do
  # get 'pages/home', to "pages#home"
  # get 'pages/contact', to  "pages#contact"
  # get 'pages/about', to "pages#about"

  resources :consultants, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :services, only: [:index, :show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
