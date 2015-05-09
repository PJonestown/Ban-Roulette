Rails.application.routes.draw do
  get 'sign_in',    to:  'sessions#new'
  post 'sign_in',   to:  'sessions#create'

  get 'users/new',  as: 'new_user'
  get 'users',      to: 'users#index'
  post 'users',     to: 'users#create'
end
