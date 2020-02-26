Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  get 'my-designs', to: 'pages#my_designs'
  get 'my-purchase-history', to: 'pages#my_purchase_history'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :designs, only: %I(show edit update new create destroy) do
    resources :purchases, only: %I(show new create)
  end

  resources :categories, only: %I(show index)
end
