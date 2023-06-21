Rails.application.routes.draw do
  get 'payments' => 'payments#index'
  get 'payments/new' => 'payments#new'
  get 'payments/:id/edit' => 'payments#edit'
  get 'payments/calculates'  => 'payments#calculates'

  get 'events/new'
  root 'pages#index'
end
