Rails.application.routes.draw do
  resources :messages

  resources :users
  root 'messages#index'
end
