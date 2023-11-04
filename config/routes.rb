Rails.application.routes.draw do
  devise_for :users
  root "vouchers#index"
  resources :vouchers
  resources :users, only: :show
  get '/users/:user_name' => 'users#show'
end
