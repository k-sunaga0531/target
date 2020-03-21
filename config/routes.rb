Rails.application.routes.draw do
  # get 'targets/index'

  # get 'groups/index'

  # get 'users/index'

  devise_for :users
  root to: "groups#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :groups
  resources :targeters


end
