Rails.application.routes.draw do
  get 'session/omniauth'
  root to: 'users#new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/thisweek', to: 'recording_sessions#this_week'
  resources :studios do
    get '/confirm', to: 'static#landing_page'
    resources :recording_sessions, only: [:new, :create, :show, :edit, :update], path: :recordingsessions
  end
  resources :recording_sessions, only: [:index], path: :recordingsessions
end
