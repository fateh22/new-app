Rails.application.routes.draw do

  #devise_for :users
  root 'home#index'
  resources :about
  resources :contact
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'welcome/index' #testing routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
