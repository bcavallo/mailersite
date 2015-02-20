Rails.application.routes.draw do
  get 'sessions/new'

  resources :messages

  resources :users
  root 'messages#index'
  get :send_message, to: 'messages#send_message', as: :send_message
  
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
