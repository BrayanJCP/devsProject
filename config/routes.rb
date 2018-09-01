Rails.application.routes.draw do
  get 'event/index'
  get 'register/index'
  get 'home/index'
  get 'login/index'
  post 'crear/usuario', to: "register#create"
  post 'crear/evento', to: "event#createEvent"
  root 'login#index'

  resources :user
  resources :event

  namespace :api do
      post 'user_login' => 'user_token#create'
      post 'user_register' => 'service#createUser'
      post 'event_list' => 'service#getEvents'
      post 'event_create' => 'service#createEvent'
      post 'role_list' => 'service#getRoles'
      post 'user_get_user' => 'service#getUser'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
