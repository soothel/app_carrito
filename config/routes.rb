Rails.application.routes.draw do
  get 'shopper/index'
  devise_for :users
  resources :suppliers
  resources :sliders
  resources :sales
  resources :type_payments
  resources :quotes
  resources :line_items
  resources :customers
  resources :countries
  resources :products
  resources :categories
  resources :marks
  resources :carts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "shopper#index"
  
end
