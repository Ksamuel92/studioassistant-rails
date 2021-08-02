Rails.application.routes.draw do
  resources :studios
  resources :users, except: [:index, :delete]
  resources :studio
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
