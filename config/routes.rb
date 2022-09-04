Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :samples do
    resources :sample_files, path: :files, only: [:show]
  end
  resource :resize, only: [:update]

  devise_for :users

  root to: "home#index"
end
