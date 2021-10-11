Rails.application.routes.draw do
  get '/index' ,to: 'articles#index'
  # get '/home' ,to: 'articles#home'
  post '/login' ,to: 'articles#login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
