Rails.application.routes.draw do
  root "pages#index"

  get "/auth/:provider/callback", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/dashboard", to: "dashboard#show", as: :dashboard
end
