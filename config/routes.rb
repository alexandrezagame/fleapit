Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items do
    member do
      get 'potential_matches'
    end
  end
end
