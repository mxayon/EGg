Rails.application.routes.draw do

  root to: 'lessons#index', as: 'root'

  get '/lesson', to: 'lessons#show'
  get '/win', to: 'lessons#win'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/learners', to: 'learners#index', as: 'learners'
  get '/learners/:id', to: 'learners#show', as: 'learner'


end
