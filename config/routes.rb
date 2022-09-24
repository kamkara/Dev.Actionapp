Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/home'
  
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
