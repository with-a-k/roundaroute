Rails.application.routes.draw do
  get '/home', to: 'home#index'
  get '/auth/twitter/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :routes, only: [:index, :show, :new, :create]

  root 'home#index'
end
