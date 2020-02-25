Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :designs do
    resources :purchases, only: %I(index)
  end

  resources :categories, only: %I(show index)
end
