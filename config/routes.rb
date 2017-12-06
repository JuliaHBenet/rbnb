Rails.application.routes.draw do

  resource :users, only: [ :edit, :destroy ]
  resources :users, only: [ :index, :show, :update]
  resources :pets do
    resources :bookings, only: [ :index, :show, :new, :create, :destroy ]
  end

  devise_for :registrations, :controllers => {
    registrations: "registrations",
    omniauth_callbacks: 'registrations/omniauth_callbacks'
  }

  root to: 'pages#home'

  # devise_for :registrations,
    # controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
