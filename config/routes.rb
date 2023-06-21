Rails.application.routes.draw do
  get 'events/new'
  root 'pages#index'
  resources :members
end
