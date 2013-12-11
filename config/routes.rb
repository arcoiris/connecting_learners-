ConnectingLearners::Application.routes.draw do
  get "users/index"
  root 'about#index'
  get "about", to: 'about#index'
end
