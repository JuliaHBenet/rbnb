Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/show'

  # get 'users/edit'

  # get 'users/update'

  # get 'users/destroy'

  devise_for :registrations, :controllers => {
    registrations: "registrations",
    omniauth_callbacks: 'registrations/omniauth_callbacks'
}

  root to: 'pages#home'

  # devise_for :registrations,
    # controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
