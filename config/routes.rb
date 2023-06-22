Rails.application.routes.draw do
  root 'events#new'
  post 'events/create'
  get '/:event_code', to: 'events#index'
  get 'payments' => 'payments#index'
  get 'payments/new' => 'payments#new'
  get 'payments/:id/edit' => 'payments#edit'
  get 'payments/:event_id/calculates'  => 'payments#calculates'

  resources :members

end
