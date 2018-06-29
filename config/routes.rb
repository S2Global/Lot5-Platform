Rails.application.routes.draw do
  get 'user/show'
  get 'users/show'
	get 'user/show'
	get 'home/index'
	resources :characters
	resources :abilities
	resources :items
	devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}

	get 'users/:id' => 'user#show'
	root "home#index"
end
