Rails.application.routes.draw do
  root 'sessions#new'

  resources :stories, only: [:new, :create]
  resources :places, only: [:index, :show]
  # resources :users, only: [:new, :create]
 
end
