Rails.application.routes.draw do
  root "movies#index"
  get 'singup' => "users#new"

  resource :session
  resources :users 
  resources :movies do
  	resources :reviews
  end
end
