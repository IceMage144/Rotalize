Rails.application.routes.draw do
  devise_for :users
  resources :trips
  resources :places
  root 'request#index'
  get 'request/index'
end
