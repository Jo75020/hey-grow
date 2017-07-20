Rails.application.routes.draw do
  devise_for :users,
             controllers: {
             registrations: "registrations",
             users: 'users'
          }


  resources :infos
  resources :forfaits, only: [:index]
resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
