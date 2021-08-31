Rails.application.routes.draw do
  devise_for :users
  root to: "homes#show"
  resource :home, only: :show
  resources :users, only: [:index, :show, :edit, :update, :new, :create] do
    resources :registrations, only: [:new, :create]
  end  
end
