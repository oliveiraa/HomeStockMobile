HomeStockMobile::Application.routes.draw do
  resources :categories
  resources :product_types
  root :to => "pages#index"
end
