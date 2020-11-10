Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:new, :create, :index]
  root 'posts#index'
end
