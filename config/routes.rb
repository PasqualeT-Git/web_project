Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/administrator', as: 'rails_admin'
  devise_for :users
  resources :contacts, only: [ :new, :create ]
 
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio', to: 'pages#portfolio'
  get 'product', to: 'pages#product'
  get 'admin', to: 'pages#admin'
  post 'new_customer', to: 'pages#new_customer'
  
  resources :customers, only: [:new, :create]
end
