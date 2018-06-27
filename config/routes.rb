Rails.application.routes.draw do
  # resources :users, only: [:show]

  # get 'welcome/index'

  # devise_for :users
  devise_for :users, :path_prefix => 'd'
  resources :users, :only => [:show]

  root "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
