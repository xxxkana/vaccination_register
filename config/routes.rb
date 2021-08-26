Rails.application.routes.draw do
  devise_for :users
  root to: "home#show"
  resource :home, only: :show
  resources :users, only: [:index, :show, :edit, :update] do
    resources :registrations, only: [:new, :create]
  end  
end
