Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/cn', to: 'pages#cn'
  get '/dashboard', to: 'pages#dashboard'
  get '/my_profile', to: 'pages#my_profile'

  resources :ratings, only: :destroy
  resources :bookmarks, only: :destroy

  resources :museums, only: [:index, :show] do
    get '/redirect', to: 'pages#redirect'
    resources :bookmarks, only: :create
    resources :museums_topics, only: [:index, :show]
    resources :ratings, only: [:index, :create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
end
