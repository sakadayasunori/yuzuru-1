Rails.application.routes.draw do
  get 'sessions/new'
  root 'users#index'
  resources :users
  resources :sessions
  resources :mains


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
