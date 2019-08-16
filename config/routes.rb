Rails.application.routes.draw do
  root to: 'pages#home'

  scope "(:locale)", locale: /fr|en/ do
  	resources :home
  	resources :consultants
  	resources :reviews
  	resources :services
  	resources :contact
	end

  resources :consultants, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :services, only: [:index, :show]
  resources :contact, only: [:index, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/about',   to: 'pages#about'
  	get '/contact', to: 'contact#index'
  	get '/:locale', to: 'pages#home'
  	get '/:locale', to: 'pages#about'
  	get '/:locale', to: 'contact#index'

end
