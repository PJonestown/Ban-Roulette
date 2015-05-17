Rails.application.routes.draw do
  devise_for :admins
  root              to: 'users#new'
  resources :users

  post 'sign_in',   to:  'sessions#create'
  delete 'sign_out', to:  'sessions#destroy', as: 'destroy_user_session'
end
