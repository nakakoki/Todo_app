Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'
  resources :rooms, only: [:index, :new, :create] do
    resources :messages, only: [:index, :create]
  end
end
