Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :samples, only: [:index, :show]
  devise_for :users

  root to: "home#index"
end
