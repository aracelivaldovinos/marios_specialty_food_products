Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'dashboard#index'
  
  # get 'dashboard/index'
  
  resources :products do 
    resources :reviews
  end 
end
