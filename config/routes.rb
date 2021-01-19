Rails.application.routes.draw do
  devise_for :users
  root to: "manuals#index"
  resources :users, only: :show
  resources :manuals do
    resources :comments, only: :create
  end
end
