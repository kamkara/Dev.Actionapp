Rails.application.routes.draw do

  
  #DASHBOARD
  get "dashboard", to:'dashboard#index'
  get "parametres", to:'dashboard#home'


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
