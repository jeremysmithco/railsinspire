Rails.application.routes.draw do
  resources :categories
  resources :samples do
    resources :sample_files, path: :files, only: [:show]
  end
  resource :resize, only: [:update]

  resources :users, only: [:index]
  get "@:username", to: "users#show", as: :user

  namespace :account do
    resource :account, only: [:show, :update]
    resource :password, only: [:update]

    root to: "accounts#show"
  end

  devise_for :users

  root to: "home#index"
end
