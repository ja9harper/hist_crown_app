Rails.application.routes.draw do

  root "welcome#index"
  
  get "/login" => "sessions#new"

  resource  :session, only: [:create, :destroy]
	resources :users, only: [:new, :create, :edit, :update, :show, :destroy] 
	resources :stories, only: [:new, :create, :edit, :index, :show, :destroy] do
  		resources :place, only: [:index, :show] 
 	 end
end 


