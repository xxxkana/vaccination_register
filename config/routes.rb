Rails.application.routes.draw do
  devise_for :users
  root to: "registrations#index"
  resources :registrations, only: [:new, :create]
  resources :users, only: [:edit, :update]
end
