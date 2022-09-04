Rails.application.routes.draw do
  resources :categories
  resources :samples do
    resources :sample_files, path: :files, only: [:show]
  end
  resource :resize, only: [:update]

  resources :users, only: [:index]
  get "@:username", to: "users#show", as: :user

  devise_for :users

  root to: "home#index"
end
