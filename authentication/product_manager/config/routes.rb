Rails.application.routes.draw do
  root "root#index"
  resources :sessions, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end
