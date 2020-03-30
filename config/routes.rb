Rails.application.routes.draw do
  resources :chatrooms
  devise_for :users
  root to: 'pages#home'

  resources :items do
    get 'like'
    get 'dislike'
    member do
      get 'potential_matches'
    end
  end

  resources :chat_rooms, only: [ :show, :create ] do
    resources :messages, only: [ :create ]
  end
end
