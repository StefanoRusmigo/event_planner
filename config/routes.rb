Rails.application.routes.draw do
  get 'invitations/new'

  post 'invitations/create'

  get '/login' ,to: 'session#new'

  post '/login', to:'session#create' 

 resources :users
 resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
