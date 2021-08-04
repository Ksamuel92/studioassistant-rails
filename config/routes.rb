Rails.application.routes.draw do
  get 'session/omniauth'
  root to: 'users#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/confirm', to: 'static#landing_page'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  resources :studios do
    resources :clients, shallow: true
  end
  resources :recordingsessions, only: [:index]
end
