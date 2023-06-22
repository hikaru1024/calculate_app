Rails.application.routes.draw do
  get 'payments' => 'payments#index'
  get 'payments/new' => 'payments#new'
  get 'payments/:id/edit' => 'payments#edit'
  get 'payments/:event_id/calculates'  => 'payments#calculates'

  get 'events/new'
  root 'pages#index'
  resources :members
  get "members/:id" => "members#show"
end
