Rails.application.routes.draw do



  root 'users#show'

  resources :users, exept: [:destroy]
  resources :sessions, only: [:new, :create, :destroy, :show]

  resources :payments
  resources :rooms
  resources :badges
  resources :contracts
  resources :guests
  resources :students

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'

  get 'show' => 'users#show'

  get 'student_edit' => 'students#edit'
  delete 'student_destroy' => 'students#destroy'
  get 'students_index' => 'students#index'
  get 'student_new' => 'students#new'
  get 'student_show' => 'students#show'
  post 'student_create' => 'students#create'
  put  'student_update' => 'students#update'

  get 'badge_edit' => 'badges#edit'
  delete 'badge_destroy' => 'badges#destroy'
  get 'badges_index' => 'badges#index'
  get 'badge_new' => 'badges#new'
  get 'badge_show' => 'badge#show'
  post 'badge_create' => 'badges#create'
  put  'badge_update' => 'badges#update'

  get 'contract_edit' => 'contracts#edit'
  delete 'contract_destroy' => 'contracts#destroy'
  get 'contracts_index' => 'contracts#index'
  get 'contract_new' => 'contracts#new'
  get 'contract_show' => 'contracts#show'
  post 'contract_create' => 'contracts#create'
  put  'contract_update' => 'contracts#update'

  get 'guest_edit' => 'guests#edit'
  delete 'guest_destroy' => 'guests#destroy'
  get 'guests_index' => 'guests#index'
  get 'guest_new' => 'guests#new'
  get 'guest_show' => 'guests#show'
  post 'guest_create' => 'guests#create'
  put  'guest_update' => 'guests#update'

  get 'payment_edit' => 'payments#edit'
  delete 'payment_destroy' => 'payments#destroy'
  get 'payments_index' => 'payments#index'
  get 'payment_new' => 'payments#new'
  get 'payment_show' => 'payments#show'
  post 'payment_create' => 'payments#create'
  put  'payment_update' => 'payments#update'

  get 'room_edit' => 'rooms#edit'
  delete 'room_destroy' => 'rooms#destroy'
  get 'rooms_index' => 'rooms#index'
  get 'room_new' => 'rooms#new'
  get 'room_show' => 'rooms#show'
  post 'room_create' => 'rooms#create'
  put  'room_update' => 'rooms#update'

end
