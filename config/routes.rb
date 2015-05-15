Rails.application.routes.draw do
  root              to: 'users#new'
  resources :users

  post 'sign_in',   to:  'sessions#create'
  delete 'sign_out', to:  'sessions#destroy', as: 'destroy_user_session'
end
