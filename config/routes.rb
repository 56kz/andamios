Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'
  get '/customers', to: 'customers#index'
  get '/customers/new', to: 'customers#new', as:'new_customer'
  post '/customers', to: 'customers#create'
  get '/customers/:id', to: 'customers#show', as:'customer'
  get '/customers/:id/edit', to: 'customers#edit', as:'edit_customer'
  patch '/customers/:id', to: 'customers#update'
  delete '/customers/:id', to: 'customers#destroy'

  get '/sales', to: 'sales#index'
end
