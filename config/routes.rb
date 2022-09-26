require 'sidekiq/web'

Rails.application.routes.draw do
  admin_constraint = lambda do |request|
    request.env["warden"].authenticate? && request.env["warden"].user.admin
  end

  mount Sidekiq::Web => "/admin/sidekiq", constraints: admin_constraint

  resources :categories
  resources :samples do
    resources :sample_files, path: :files, only: [:show]
  end
  resource :resize, only: [:update]

  resources :users, only: [:index]
  get "@:username", to: "users#show", as: :user

  namespace :account do
    resource :account, only: [:show, :update]
    resource :samples, only: [:show]
    resource :avatar, only: [:update, :destroy]
    resource :password, only: [:update]

    root to: "accounts#show"
  end

  devise_for :users

  root to: "home#index"

  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unprocessable"
  get "/500", to: "errors#internal_error"
end
