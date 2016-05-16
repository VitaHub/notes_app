Rails.application.routes.draw do
  devise_for :users
  root 'cv#index'

  get 'notes' => 'notes#index', as: 'user_root'
  resources :notes

end
