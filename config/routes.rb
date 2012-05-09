HomeStockMobile::Application.routes.draw do
  resources :categories
  resources :product_types
  resources :products
  root :to => "pages#index"
end
