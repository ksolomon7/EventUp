Rails.application.routes.draw do
  # resources :group_interests
  # resources :user_events
  # resources :events
  # resources :interests
  # resources :groups
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #################################routes for users###################################################
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  get "/login", to: "users#login", as: "login"
  post "/submit_log_in_form", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"
  #################################routes for groups###################################################
  get "/groups", to: "groups#index", as: "groups"
  get "/groups/new", to: "groups#new", as: "new_group"
  post "/groups", to: "groups#create"
  get "/groups/:id", to: "groups#show", as: "group"

  #################################routes for interests###################################################
  get "/interest", to: "interests#index", as: "interests"
  get "/interests/:id", to: "interests#show", as: "interest"

  #################################routes for events######################################################
  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  post "/events", to: "events#create"
  get "/events/:id", to: "events#show", as: "event"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update"
  delete "/events/:id", to: "events#destroy", as: "destroy_event"

  #################################routes for user_events#################################################
  get '/userevents', to: 'user_events#index', as: 'user_events'
  get '/userevents/new', to: "user_events#new", as: "new_user_event"
  post '/userevents', to: "user_events#create"
  get '/userevents/:id', to: 'user_events#show', as: 'user_event'
  delete '/userevents/:id', to: 'user_events#destroy', as: 'delete_user_event'

  post "/userevents/add_event", to: "user_events#add_event", as: "adds_event"
  
 #################################routes for group_interest###############################################


#################################routes for Homepage######################################################
  root to: 'pages#home', as: "home_page"
end
