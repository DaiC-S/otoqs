Rails.application.routes.draw do
  devise_for :users
  root "vouchers#index"
  resources :vouchers do
    put :update_order, on: :collection
  end
  resources :users, only: :show
  get '/users/:user_name', to: 'users#show'
end
