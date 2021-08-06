Rails.application.routes.draw do
  get 'session/omniauth'
  root to: 'users#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # get '/confirm', to: 'static#landing_page'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  resources :studios do
    get '/confirm', to: 'static#landing_page'
    resources :recording_sessions, only: [:index, :create, :new, :edit, :update], path: :recordingsessions
  end
  resources :recording_sessions, only: [:index], path: :recordingsessions
end
