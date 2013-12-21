ConnectingLearners::Application.routes.draw do
  devise_for :users
  root 'about#index'
  get "about", to: 'about#index'
  resources :topics
end