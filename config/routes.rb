Rails.application.routes.draw do

  get '/', to: 'lessons#index'
  get '/lesson', to: 'lessons#show'
  get '/win', to: 'lessons#win'


end
