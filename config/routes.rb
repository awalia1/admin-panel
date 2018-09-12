Rails.application.routes.draw do
  get 'courses/new'
  get 'courses/create'
  get 'courses/edit'
  get 'courses/show'
  get 'courses/index'
  root 'pages#home'

  get 'register' => 'users#new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  resources :teachers do
    resources :cohorts
    resources :students do
      delete 'terminate' => 'students#destroy'
    end
  end

  resources :users
  resources :articles

  get 'new-company' => 'teachers#new'
  get 'myteachers' => 'teachers#index'
  get 'teachers/new'
  get 'teachers/edit'
  get 'teachers/show'

  get 'students/new'
  get 'students/edit'
  get 'students/index'
  get 'students/show'
  get 'cohorts/new'
  get 'cohorts/edit'
  get 'cohorts/show'
  get 'cohorts/index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

