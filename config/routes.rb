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

  resources :workorders do
    # /workorders/1/comments/1
    resources :comments
  end
  # get "/workorders", to: "workorders#index"
  # get "/workorders/:id", to: "workorders#show"
end
