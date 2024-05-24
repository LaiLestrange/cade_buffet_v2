Rails.application.routes.draw do
  devise_for :managers,
  path: "managers",
  controllers: {
    sessions: 'managers/sessions'
  }

  devise_for :customers,
    path: "customers",
    controllers: {
      sessions: 'customers/sessions'
    }

  root to: "home#index"
  get "/login", to: "home#login"
end
