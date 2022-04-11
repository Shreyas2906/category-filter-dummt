Rails.application.routes.draw do
  resources :wishlists
  resources :line_items
  resources :my_carts
  post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'
  devise_for :users
  resources :categories
  resources :products

  root 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
