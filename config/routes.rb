Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  get 'results', to: 'pages#search_results', as: 'search_results'
  get 'my-purchase-history', to: 'pages#my_purchase_history'
  get 'designer/:id/designs', to: 'pages#designer_designs', as: 'designer_designs'
  get 'designers', to: 'pages#designers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :designs, only: %I(show edit update new create destroy) do
    resources :purchases, only: %I(show new create)
  end

  resources :categories, only: %I(show index) do
    get 'search_part', to: 'designs#search'
  end
end
