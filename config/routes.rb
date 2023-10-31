Rails.application.routes.draw do
  devise_for :users
  root "vouchers#index"
  resources :vouchers
end
