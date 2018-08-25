Rails.application.routes.draw do
  get 'register/index'
  get 'home/index'
  get 'login/index'
  root 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
