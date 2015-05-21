Rails.application.routes.draw do
  root              to: 'users#new'

  resources :users

  devise_for :admins

  post 'sign_in',   to:  'sessions#create'
  delete 'sign_out', to:  'sessions#destroy', as: 'destroy_user_session'

  patch 'bans/:id', to: 'bans#update'
  #patch 'ban_user/:id', to: 'users#ban_user'
  #patch 'users/:id/ban_user', to: 'users#ban_user'
  #post 'bans/ban_user', to: 'bans#ban_user'
end
