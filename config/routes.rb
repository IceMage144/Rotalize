Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'

  root 'trips#index', as: 'home'
  get 'request/index'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  devise_for :users
  resources :trips
  resources :places
end
