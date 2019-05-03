Rails.application.routes.draw do
  resources :customers
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'
  get '/sales', to: 'sales#index'
end
