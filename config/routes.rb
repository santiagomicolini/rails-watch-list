Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'lists#index'
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  # resources :lists, only: [:index]

  # Defines the root path route ("/")
  # root "articles#index"
end
