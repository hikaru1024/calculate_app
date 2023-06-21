Rails.application.routes.draw do
  root 'events#new'
  post 'events/create'
  get '/:evet_code', to: 'events#index'
end
