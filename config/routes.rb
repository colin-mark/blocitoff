Rails.application.routes.draw do
  get 'items/new'

  get 'items/create'

  # resources :users, only: [:show]

  # get 'welcome/index'

  # devise_for :users
  devise_for :users#, :path_prefix => 'd'

  resources :users, :only => [:show] do
    resources :items, :only => [:new, :create, :destroy]
  end

  root "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
