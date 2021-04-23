Rails.application.routes.draw do  
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, onry: [:edit, :update]
  resources :rooms, onry: [:new, :create,] do
    resources :messages, onry: [:index, :create]
  end
end


