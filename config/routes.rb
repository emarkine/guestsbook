Rails.application.routes.draw do
  root to: 'site#index'
  get 'site/index'
  get '/locale' => 'site#locale'

  resources :rooms

  get '/calendar' => 'calendar#index'

  resources :users
  get '/user/:name' => 'users#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/user/sort/:field' => 'users#sort'

end
