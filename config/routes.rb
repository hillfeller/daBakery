Rails.application.routes.draw do

  get 'store/show'

  resources :items
  root 'welcome#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  resource :cart, only: [:show] do
    put 'add/:item_id', to: 'carts#add', as: :add_to
    put 'remove/:item_id', to: 'carts#remove', as: :remove_from
  end
end
