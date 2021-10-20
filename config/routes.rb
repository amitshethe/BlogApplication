Rails.application.routes.draw do
  root 'articles#index'
  get '/index' ,to: 'articles#index'
  # get '/home' ,to: 'articles#home'
  #post '/login' ,to: 'articles#login'
  get '/show/:id' ,to: 'articles#show'
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
