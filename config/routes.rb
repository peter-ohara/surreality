Rails.application.routes.draw do
  resources :sale_listings
  resources :architectures
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'sale_listings#index'

  get 'sale_search', to: 'sale_listings#search'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
