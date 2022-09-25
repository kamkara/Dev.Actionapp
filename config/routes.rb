Rails.application.routes.draw do
  resources :articles
  resources :founders
  resources :campagnes
  resources :bememberships
  
  get "mot-fondateur", to:"founders#index"


  ##### CAMPAGNES ######
  get "new-campagne", to:"campagnes#new"
  get "campagnes", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"
  
  ##### HEADER ######
  get "adhesion", to:'bememberships#new'
  get 'good', to:"bememberships#page_good" 
  get "donner", to:'donner#index'
  
  
  ##### DASHBOARD ######
  get "dashboard", to:'dashboard#index'
  get "parametres", to:'dashboard#home'
  
  ##### USER ######
   devise_scope :user do
    get 'action-plus-sign-in', to: 'devise/sessions#new'
    get 'action-plus-sign-up', to: 'devise/registrations#new', as: "new_user_registration"
    get 'profile/edit'    => 'devise/registrations#edit'
    get 'profile/cancel'  => 'devise/registrations#cancel'
    delete 'sign-out', to: 'devise/sessions#destroy'
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
