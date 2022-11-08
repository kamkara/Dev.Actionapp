Rails.application.routes.draw do
  resources :benevols
  resources :projets
  
  resources :articles
  resources :founders
  resources :campagnes
  resources :bememberships
  
  
  get "agisons-ensemble", to:"involved#index"
  
  #Founder
  get "mot-fondateur", to:"founders#index"
  
  ##### ACTIONS PLUS ITEMS ######
  get "action-plus-eau-potable", to:'action_item#itemA'
  get "action-plus-electricite", to:'action_item#itemB'
  get "action-plus-education", to:'action_item#itemC'
  

  
  ##### ARTICLES ######
  get "new-article", to:"articles#new"
  get "nos-articles", to:"articles#index"


  ##### BENEVOLS ######
  get "new-benevol", to:"benevols#new"
  get "nos-benevols", to:"benevols#index"

  ##### CAMPAGNES ######
  get "new-campagne", to:"campagnes#new"
  get "nos-campagnes-financements", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"
  
  ##### HEADER ######
  get "adhesion", to:'bememberships#new'
  get 'good', to:"bememberships#page_good" 
  get "donner", to:'donner#index'
  

  ##### PROJECTS ######
  get "new-projet", to:"projets#new"
  get "les-projets", to:"projets#index"


  ##### DASHBOARD ######
  get "dashboard", to:'dashboard#index'
  get "dashboard-setup", to:"dashboard#home"
  get "dashboard-membres", to:"dashboard#members"
  get "dashboard-articles", to:"dashboard#articles"
  get "dashboard-campagnes", to:"dashboard#campagnes"
  get "dashboard-projets", to:"dashboard#projets"
  get "dashboard-adhesions", to:"dashboard#bememberships"
  get "dashboard-benevols", to:"dashboard#benevols"
  
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
