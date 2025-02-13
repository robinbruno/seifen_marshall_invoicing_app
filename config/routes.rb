Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :accountants
  resources :expenses
  resources :invoices do
    collection do
      get 'last_invoice_amount'
    end
  end
  resources :clients
  resources :fixed_expenses
  resources :users, only: [:index, :show, :new, :create]
  resources :reporting, only: [:index] do
    collection do
      get :monthly_report
      get :quarterly_report
      get :yearly_report
    end
  end

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
