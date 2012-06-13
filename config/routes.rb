HomeStockMobile::Application.routes.draw do
  resources :categories
  resources :product_types
  resources :products
  resources :stocks
  root :to => "pages#index"
end
