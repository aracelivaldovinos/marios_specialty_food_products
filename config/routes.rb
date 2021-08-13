Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/index'
  
  resources :products do 
    resources :reviews
  end 
  root to: 'dashboard#index'
end
