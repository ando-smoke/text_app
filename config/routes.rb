Rails.application.routes.draw do
  root to: 'messages#index'

  resources :contacts
  resources :messages

end
