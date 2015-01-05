Rails.application.routes.draw do
  resources :messages

  resources :users
  root 'messages#index'
  get :send_message, to: 'messages#send_message', as: :send_message
end
