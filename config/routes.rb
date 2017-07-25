Rails.application.routes.draw do
  devise_for :users,
             controllers: {
             registrations: "registrations",
             users: 'users',
          }



get "infos/contact", to: "infos#contact"

resources :sessions, only: [:create, :new]
  resources :infos
  resources :forfaits, only: [:index]
resources :orders, only: [:show, :create] do
      post "payments/do_test", to: "payments#do_test"
    get "payments/do_test", to: "payments#do_test"
  resources :payments

end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
