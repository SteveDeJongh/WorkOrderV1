Rails.application.routes.draw do
  get 'users/profile'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/u/:id', to: 'users#profile', as: 'user'

  resources :cust_items
  resources :customers
  root "dashboard#index"

  resources :workorders
  # get "/workorders", to: "workorders#index"
  # get "/workorders/:id", to: "workorders#show"
end
