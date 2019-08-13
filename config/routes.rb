Rails.application.routes.draw do
  root to: 'pages#home'

  resources :consultants, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :contact, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/about',   to: 'pages#about'
  	get 'contact', to: 'contact#index'

end
