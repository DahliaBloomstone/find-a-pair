Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#users controller:
get '/register', to: 'users#new' #defining what url you want to support, telling it to directed to users/new which is a rails convention for describing a method in a controller.

# told form_tag to create/register new users - handle new URLS/web requests
# register new user
post '/users', to: 'users#create'


#sessions controller:
get '/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/logout', to: 'sessions#destroy' 

  resources :pairs

  root 'application#home'
end

#allows us to define URLS in a natural way
#what code in my application should deal with that request
