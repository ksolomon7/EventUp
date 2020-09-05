Rails.application.routes.draw do
  # resources :group_interests
  # resources :user_events
  # resources :events
  # resources :interests
  # resources :groups
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #routes for users
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  get "/login", to: "users#login", as: "login"
  post "/submit_log_in_form", to: "users#handle_login"

  #routes for groups

  #routes for interests

  #routes for events
  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create"
  get "/events/:id", to: "events#show", as: "event"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update"
  delete "/events/:id", to: "events#destroy", as: "destroy_event"

  #routes user_events

  #routes for group_interests

  root to: 'pages#home'
end
