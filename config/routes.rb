Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new' #defining what url you want to support, telling it to directed to users/new which is a rails convention for describing a method in a controller.
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  resources :pairs

  root 'application#home'
end

#allows us to define URLS in a natural way
#what code in my application should deal with that request
