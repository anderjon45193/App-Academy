Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  get 'users/', to: 'users#index'
  get 'users/new', to: 'users#new'
  get 'users/:id', to: 'users#show', as: 'user'
  post 'users/', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
