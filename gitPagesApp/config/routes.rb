Rails.application.routes.draw do
  # https://richonrails.com/articles/github-authentication-in-ruby-on-rails
  get "/auth/:provider/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  root to: 'sessions#new'

  # Alex original code
  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'sessions/new'

  # get 'static_pages/home'
  # root to: "static_pages#home"

  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy' 

  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
