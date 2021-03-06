Rails.application.routes.draw do
  resource :sessions, only: [:new, :create, :destroy]

  resource :cards, only: [:show]

  resources :users, only: [:new, :create, :show, :edit, :update, :profile, :click]

  root 'users#profile'
end
