Rails.application.routes.draw do
  root to: "home#index"
  get "/login", to: "home#login"

  devise_for :managers,
  path: "managers",
  controllers: {
    sessions: 'managers/sessions',
    registrations: 'managers/registrations'
  }

  devise_for :customers,
    path: "customers",
    controllers: {
      sessions: 'customers/sessions',
      registrations: 'customers/registrations'
  }

  resources :buffets, only: [:new, :create, :show]
  get '/buffet', to: "buffets#index", as: :manager_root


end
