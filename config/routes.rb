Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :deposits, only: [:create, :index, :show] do
    resources :bookings, only: [:create, :show, :destroy, :update]
    resources :reviews, only: [:create, :show, :update, :destroy]
  end
end
