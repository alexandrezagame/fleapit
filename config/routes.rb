Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, only: [:index, :create, :new, :edit, :update, :destroy]
end
