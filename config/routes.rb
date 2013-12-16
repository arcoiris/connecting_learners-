ConnectingLearners::Application.routes.draw do
  devise_for :users
  get "users/index"
  root 'about#index'
  get "about", to: 'about#index'
end
