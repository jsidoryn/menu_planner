Rails.application.routes.draw do
	root "recipes#index"
  resources :recipes
  resources :shortlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
