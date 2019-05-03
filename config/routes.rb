Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'
  get '/customers', to: 'customers#index'
  get '/sales', to: 'sales#index'
end
