Rails.application.routes.draw do

  get '/', to: 'lessons#index'
  get '/lesson', to: 'lessons#show'
  get '/win', to: 'lessons#win'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'


end
