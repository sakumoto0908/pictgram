Rails.application.routes.draw do
  get 'topics/new'
  get 'session/new'
  get 'tags/index'
  get 'tags/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  resources :topics
  
  get 'pages/link'
  get 'pages/test'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
end
