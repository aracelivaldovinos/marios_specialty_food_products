Rails.application.routes.draw do
  get 'dashboard/index'
  
  resources :products do 
    resources :reviews
  end
  root to: 'dashboard#index'
end
