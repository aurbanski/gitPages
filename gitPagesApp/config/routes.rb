Rails.application.routes.draw do
  # https://richonrails.com/articles/github-authentication-in-ruby-on-rails
  get "/auth/:provider/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  get "auth/new", to: 'sessions#new'

  # Alex original code
  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'sessions/new'

  # get 'static_pages/home'
  root to: "static_pages#home"

  #https://www.railstutorial.org/book/basic_login
  get    '/login',   to: 'sessions2#new'
  post   '/login',   to: 'sessions2#create'
  delete '/logout',  to: 'sessions2#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
