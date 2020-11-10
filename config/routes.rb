Rails.application.routes.draw do
  devise_for :users
  resources :post, only: [:new, :create, :index]
  root 'posts#index'
end
