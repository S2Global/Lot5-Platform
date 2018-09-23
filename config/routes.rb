Rails.application.routes.draw do

  get 'worldcharacters/new'
	devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}
	resources :worlds do
		resources :characters
	end
	resources :sessions do
		resources :sessioncharacters
	end
	resources :characters do
		resources :abilities
	end
	resources :characters do
		resources :items
	end

	get 'users/:id' => 'user#show'
	root "home#index"
end
