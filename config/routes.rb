Rails.application.routes.draw do
  root 'cv#index'
  resources :notes, only: [:index]
end
