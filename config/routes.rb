Rails.application.routes.draw do
  resources :cust_items
  resources :customers
  root "workorders#index"

  resources :workorders
  # get "/workorders", to: "workorders#index"
  # get "/workorders/:id", to: "workorders#show"
end
