Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :deposits, only: [:create, :index, :show] do
    resources :bookings, only: [:show, :new, :create]
    resources :reviews, shallow: true
  end

  patch "bookings/:id", to: "bookings#update", as: "update_booking"
  delete "bookings/:id", to: "bookings#destroy", as: "delete_booking"
  get 'dashboard', to: 'pages#dashboard'
  get 'about', to: 'pages#about'
end
