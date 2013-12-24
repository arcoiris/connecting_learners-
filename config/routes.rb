ConnectingLearners::Application.routes.draw do
  root 'about#index'
  get "about", to: 'about#index'
  get "subtopic/index"
  get "subtopic/show"
  get "subtopic/new"
  get "subtopic/create"
  get "subtopic/edit"
  get "subtopic/update"
  get "subtopic/destroy"
  devise_for :users
  resources :topics
end