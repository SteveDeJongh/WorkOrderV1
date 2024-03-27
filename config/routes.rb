Rails.application.routes.draw do
  root "workorders#index"

  resources :workorders
  # get "/workorders", to: "workorders#index"
  # get "/workorders/:id", to: "workorders#show"
end
