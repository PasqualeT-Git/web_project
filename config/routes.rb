Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/administrator', as: 'rails_admin'
  devise_for :users
 
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/portfolio', to: 'pages#portfolio'
  get '/product', to: 'pages#product'
  get '/services', to: 'pages#services'
  get '/admin', to: 'pages#admin'
  post '/customers', to: 'customers#create', as: 'customer'

  resources :customers, only: [:new, :create]
end
