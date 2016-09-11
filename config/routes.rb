Rails.application.routes.draw do


  get '/', to: 'lessons#index'
  get '/lesson', to: 'lessons#show'
  get '/win', to: 'lessons#win'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'


end
