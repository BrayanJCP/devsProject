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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
