Rails.application.routes.draw do
  resources :maint_records
  resources :user_cars
  resources :families
  resources :users
  resources :cars
  resources :sessions, only: [:new, :create, :destroy]
  resources :photos
  root to: "photos#index"


    get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
    # get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
end
