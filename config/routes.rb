Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update, :index]
  resources :rooms, only: [:new, :create]
end
