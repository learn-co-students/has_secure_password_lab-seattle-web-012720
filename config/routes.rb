Rails.application.routes.draw do
  get 'sessions/new', to: 'sessions#new'

  post 'sessions/destroy', to: 'sessions#destroy'

  post 'sessions/create', to: 'sessions#create'

  get 'users/new', to: 'users#new'

  post 'users/create', to: 'users#create'

  get 'users/welcome', to: 'users#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
