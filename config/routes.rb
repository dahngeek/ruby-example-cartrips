Rails.application.routes.draw do
  resources :trips
  resources :drivers
  resources :vehicles
  resources :vehicle_types

  root :to => "vehicles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
