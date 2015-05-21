Rails.application.routes.draw do
  root              to: 'users#new'

  resources :users

  devise_for :admins

  post 'sign_in',   to:  'sessions#create'
  delete 'sign_out', to:  'sessions#destroy', as: 'destroy_user_session'

  patch 'bans/:id', to: 'bans#update'
end
