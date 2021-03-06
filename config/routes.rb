Rails.application.routes.draw do
  root to: "welcome#index"

  # Routes for our Mutual Funds
  get "/mutualfunds", to: "mutual_funds#index"
  get "/mutualfunds/:id", to: "mutual_funds#show", as: "mutual_fund" 
  get "/mutualfunds/:id/stocks", to: "stocks#index"
  get "/search", to: "mutual_funds#search", as: "mf_search"

  # Routes for Users
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"
  post "/users/:id/mutualfunds", to: "users#add_mutual_fund", as: "add_mutual_fund"
  delete "/users/:id/mutualfunds", to: "users#delete_mutual_fund", as: "delete_mutual_fund"

  # Routes for Sessions
  get "/login", to: "sessions#new", as: "new_session"   
  get "/logout", to: "sessions#destroy", as: "destroy_session"
  post "/sessions", to: "sessions#create"  

  # Routes for About  
  get "/about", to: "about#index", as: "about" 
end
