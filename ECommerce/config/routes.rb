Rails.application.routes.draw do
  resources :order_items
  resources :payments
  resources :coupons
  resources :orders
  resources :product_variations
  resources :product_categories
  resources :variations
  resources :payment_methods
  resources :products
  resources :categories
  resources :users

  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
