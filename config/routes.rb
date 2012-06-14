HomeStockMobile::Application.routes.draw do
  resources :categories
  resources :product_types
  resources :products
  resources :stocks
  resources :stock_movements
  root :to => "pages#index"
end
