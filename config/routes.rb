Rails.application.routes.draw do
  post 'sign_in',   to:  'sessions#create'

  get 'users/new',  as: 'new_user'
  get 'users',      to: 'users#index'
  post 'users',     to: 'users#create'

  root              to: 'users#new'
end
