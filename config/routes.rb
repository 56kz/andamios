Rails.application.routes.draw do
  resources :customers
  resources :sales
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'

end
