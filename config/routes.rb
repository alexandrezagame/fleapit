Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items do
    get 'like'
    get 'dislike'
    member do
      get 'potential_matches'
    end
  end
  resources :matches, only: [:create, :index]
end
