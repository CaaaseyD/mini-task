Rails.application.routes.draw do
  resources :goals
  devise_for :users
  get 'homepage/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'homepage#index'
end