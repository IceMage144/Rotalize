Rails.application.routes.draw do

  get 'errors/not_found'

  get 'errors/internal_server_error'

  devise_for :users, :controllers => {registrations: 'registrations'}

  resources :trips
  root 'trips#index', as: 'home'
  post 'trips/:id', :to => "trips#create_day"
  put 'day', :to => "days#update", :as => "update_day"
  delete 'day', :to => "days#destroy", :as => "delete_day"

  resources :places
end
