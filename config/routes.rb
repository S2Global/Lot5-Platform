Rails.application.routes.draw do
  get 'home/index'
  resources :characters
  resources :abilities
  resources :items
  devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}

  root "home#index"
end
