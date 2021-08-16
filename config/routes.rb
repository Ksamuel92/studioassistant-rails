Rails.application.routes.draw do
  get 'session/omniauth'

  root to: 'static#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
  resources :users, only: [:show, :edit, :update, :destroy], path: :profile

  resources :studios do
    resources :recording_sessions, only: [:new, :create, :show, :edit, :update], path: :recordingsessions
  end

  resources :recording_sessions, only: [:index, :destroy], path: :recordingsessions do
    get 'thisweek', on: :collection
  end
end
