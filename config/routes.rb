ContasCesium::Application.routes.draw do
  
  root 'transactions#index'
  resources :categories
  resources :transactions
  resources :companies
  
end
