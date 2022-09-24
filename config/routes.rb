Rails.application.routes.draw do
  resources :bememberships
  
  
  #HEADER
  get "adhesion", to:'bememberships#new'
  get 'good', to:"bememberships#page_good" 
  
  #DASHBOARD
  get "dashboard", to:'dashboard#index'
  get "parametres", to:'dashboard#home'


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
