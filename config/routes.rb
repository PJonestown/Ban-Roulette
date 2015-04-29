Rails.application.routes.draw do
  get 'users/new', as: 'new_user'
  get 'users', to: 'users#index'
end
