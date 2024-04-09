Rails.application.routes.draw do
  resources :customers
  resources :users
  resources :orders
  resources :listitems
  resources :carts
  get 'shopper/list'
  get '/', to: "shopper#list", as: 'shopper'
  
  get '/access/login'
  get '/access/authenticate'
  get '/access/logout'
  get '/access/new'

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
