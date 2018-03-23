Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch 'capture', to: 'pokemon#capture', as: 'capture'
  patch 'damage', to: 'pokemon#damage', as: 'damage'
  get 'add', to: 'pokemon#add', as: 'add'
  post 'add', to: 'pokemon#create', as: 'create'
end
