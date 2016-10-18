Rails.application.routes.draw do
  get 'pages/index'

  resources :ingredients
	root "recipes#index"
  resources :recipes
  resources :shortlists do
  	member do
			get 'add'
			get 'remove'
			get 'remove_all'
		end
  end
  resources :items do
    post 'sort', on: :collection
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
