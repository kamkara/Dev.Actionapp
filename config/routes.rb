Rails.application.routes.draw do
  resources :campagnes
  resources :bememberships
  
  ##### CAMPAGNES ######
  get "new-campagne", to:"campagnes#new"
  get "campagnes", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"
  
  ##### HEADER ######
  get "adhesion", to:'bememberships#new'
  get 'good', to:"bememberships#page_good" 
  
  
  ##### DASHBOARD ######
  get "dashboard", to:'dashboard#index'
  get "parametres", to:'dashboard#home'


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
