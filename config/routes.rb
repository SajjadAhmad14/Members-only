Rails.application.routes.draw do
  resources :post, only: [:new, :create, :index]
  root 'posts#index'
end
