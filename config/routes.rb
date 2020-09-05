Rails.application.routes.draw do
  # resources :group_interests
  # resources :user_events
  # resources :events
  # resources :interests
  # resources :groups
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #routes for users
  get "/login", to: "users#login", as: "login"

  #routes for groups

  #routes for interests

  #routes for events

  #routes user_events

  #routes for group_interests

  root to: 'pages#home'
end
