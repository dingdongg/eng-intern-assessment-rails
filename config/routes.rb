Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/articles", to: "articles#index"
  root "articles#index"
  get "/search", to: "articles#search"
  post "/submit_query", to: "articles#submit_query"
  get "/articles/:id", to: "articles#show"
  post "/articles/:id/update", to: "articles#update"

  # Defines the root path route ("/")
  # root "posts#index"
end
