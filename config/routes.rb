Rails.application.routes.draw do

  get 'errors/not_found'

  get 'errors/internal_server_error'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :trips
  root 'trips#index', as: 'home'
  post 'trips/:id', :to => "trips#create_day"
  put 'day', :to => "days#update", :as => "update_day"

  resources :places
end
