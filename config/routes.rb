Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  resources :users
end
