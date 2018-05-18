Rails.application.routes.draw do
  root 'trips#index', as: 'home'
  get 'request/index'
  
  devise_for :users
  resources :trips
  resources :places
end
