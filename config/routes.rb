Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :museums, only: [:index, :show] do
    resources :bookmarks, only: :create
    resources :ratings, only: [:index, :new, :create]
  end

  resources :bookmarks, only: :destroy
end
