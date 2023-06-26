Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :deposits, only: [:create, :index, :show] do
    resources :bookings, only: [:new, :create, :show, :destroy, :update]
    resources :reviews, only: [:create, :show, :update, :destroy]
  end

  get 'dashboard', to: 'pages#dashboard'
end

# delete "flats/:id", to: "flats#destroy", as: "delete_flat"
