Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/my_profile', to: 'pages#my_profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :museums, only: [:index, :show] do
    resources :bookmarks, only: :create
    resources :museums_topics, only: [:index, :show]
    resources :ratings, only: [:index, :create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :ratings, only: :destroy
  resources :bookmarks, only: :destroy
end
