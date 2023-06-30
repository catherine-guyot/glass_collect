Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :deposits, only: [:create, :index, :show] do
    resources :bookings
    resources :reviews

  end


  get 'dashboard', to: 'pages#dashboard'
  get 'about', to: 'pages#about'
end
