Rails.application.routes.draw do
  root 'events#new'
  post 'events/create'
<<<<<<< HEAD
  get '/:event_code', to: 'events#index'
=======
  get '/:evet_code', to: 'events#index'
>>>>>>> origin/main
  get 'payments' => 'payments#index'
  get 'payments/new' => 'payments#new'
  get 'payments/:id/edit' => 'payments#edit'
  get 'payments/:event_id/calculates'  => 'payments#calculates'

  resources :members
<<<<<<< HEAD
  
=======

>>>>>>> origin/main
end
