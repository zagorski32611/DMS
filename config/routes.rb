Rails.application.routes.draw do

  get 'vehicles/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'static_pages#index'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  match '/users/:id',     to: 'users#index',       via: 'get'

  resources :users
  resources :account_activations, only: [:edit]
  resource :password_resets, only: [:new, :create, :edit, :update]
  resources :repair_orders, controller: 'repair_order'
  resources :vehicles, controller: 'vehicles'
  resource :customers, controller: 'customers'
end
