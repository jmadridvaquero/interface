Rails.application.routes.draw do
  
  resources :consultants, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :services, only: [:index, :show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/about',   to: 'pages#about'
  	get '/contact', to: 'pages#contact'
end
