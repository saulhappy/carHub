Rails.application.routes.draw do
  root to: "landing#index"

  resources :maint_records
  resources :user_cars
  resources :families
  resources :users
  resources :cars
  resources :photos
  
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
    # get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
end
