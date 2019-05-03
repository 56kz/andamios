Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'
  get '/customers', to: 'customers#index'
  get '/customers/new', to: 'customers#new', as:'new_customer'
  post '/customers', to: 'customers#create'
  get '/sales', to: 'sales#index'
end
