Rails.application.routes.draw do
  get 'session/new'

  post 'session/create'

 resources :users
 resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
