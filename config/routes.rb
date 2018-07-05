Rails.application.routes.draw do
  resources :items
  resources :abilities
  resources :characters
	devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}
	resources :characters do
		resources :abilities
	end
	resources :characters do
		resources :items
	end

	get 'users/:id' => 'user#show'
	root "home#index"
end
