Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups, :places, only: [ :index, :create ]
  resources :users, only: :create
  resources :trips, except: [ :new, :edit, :update ]

  post '/trips/:id/join', to: 'trips#join'
  post '/trips/:id/leave', to: 'trips#leave'
 
end
