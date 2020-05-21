Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes for forgotten password
  post "password/forgot", to: "passwords#forgot"
  post "password/reset", to: "passwords#reset"

  # Create a User session
  # Create a new User via registration
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]

  # Log a user out
  # Check to make sure a user is logged in
  # this is used when moving in the app
  # to check the user remains logged in
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  # Static page at root of api to make sure
  # server is running
  root to: "static#home"
end
