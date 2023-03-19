Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "administrators/dashboard#index"

  # Defines the administator path route ("/administrators")
  namespace :administrators do
    resources :categories
    resources :companies
    namespace :users do
      resources :activities, only: :show
    end
    resources :dashboard
    resources :users
  end
end
