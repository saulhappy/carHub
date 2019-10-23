Rails.application.routes.draw do
  resources :maint_records
  resources :user_cars
  resources :families
  resources :users
  resources :cars
  resources :sessions, only: [:new, :create, :destroy]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
