HomeStockMobile::Application.routes.draw do
  resources :categories
  resources :product_types
  resources :products
  resources :stocks
  resources :stock_movements
  resources :stock_checkers
  root :to => "pages#index"
end
