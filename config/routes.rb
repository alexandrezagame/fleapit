Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  devise_for :users
  root to: 'pages#home'

  resources :items do
    get 'like'
    get 'dislike'
    member do
      get 'potential_matches'
    end
  end

  resources :matches, only: [:create, :index, :update] do
    # post 'exchanged'
    resources :chat_rooms, only: [ :show, :create ]
  end
  resources :chat_rooms, only: [] do
      resources :messages, only: [ :create ]
  end


end
