Rails.application.routes.draw do
  resources :customers
  resources :sales, :except => [:show, :edit, :update]
  get '/products', to: 'products#index'
  get '/sectors', to: 'sectors#index'

end
