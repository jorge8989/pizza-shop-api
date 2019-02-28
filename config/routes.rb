Rails.application.routes.draw do
  namespace :api do
    resources :foods, only: :index
    resources :flavors
    resources :toppings
    resources :products
    resources :orders, :defaults => { :format => 'json' }
  end
end
