Rails.application.routes.draw do
  get 'site/index'
  root to: 'site#index'

  resources :users
  get '/user/:name' => 'users#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/user/sort/:field' => 'users#sort'

end
