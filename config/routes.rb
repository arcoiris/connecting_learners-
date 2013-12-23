ConnectingLearners::Application.routes.draw do
  get "subtopic/index"
  get "subtopic/show"
  get "subtopic/new"
  get "subtopic/create"
  get "subtopic/edit"
  get "subtopic/update"
  get "subtopic/destroy"
  devise_for :users
  root 'about#index'
  get "about", to: 'about#index'
  resources :topics
end