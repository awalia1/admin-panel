Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'pages#home'
  
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  get 'register' => 'users#new'

  get '/login' => 'sessions#new'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
