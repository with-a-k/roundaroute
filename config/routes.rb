Rails.application.routes.draw do
  get '/home', to: 'home#index'
  resources :routes, only: [:show, :new, :create]

  root 'home#index'
end
