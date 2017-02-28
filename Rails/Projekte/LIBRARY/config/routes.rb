Rails.application.routes.draw do
	root 'authors#index'
	resource :session
	resources :users do
		resources :lendings
	end
  resources :authors do
  	resources :books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
