Rails.application.routes.draw do

  resources :messages, only: [:new, :create]
  resources :contact_forms, only: [:new, :create]

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
