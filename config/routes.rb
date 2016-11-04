Rails.application.routes.draw do
  get 'pages/index'

  resources :ingredients
  root "recipes#index"
  resources :recipes
  resource :shortlist do
    member do
      get 'remove_all'
    end
  end
  resources :items do
    post 'sort', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
