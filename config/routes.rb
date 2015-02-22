Rails.application.routes.draw do
  resources :messages
  resources :users

  root 'sessions#new'
  get :send_message, to: 'messages#send_message', as: :send_message 
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
end
