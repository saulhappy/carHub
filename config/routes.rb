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
  get "/cars_edit", to: "cars#edit", as: "cars_edit"
  get "/cars/:id", to: "cars#show", as: "cars_show"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
    get '/cars/', to: 'maint_records#new', as: 'upload_record'
    # get '/car/:id/photos', to: 'photos#new', as: 'upload_photo'
end
