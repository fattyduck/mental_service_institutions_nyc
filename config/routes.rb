Rails.application.routes.draw do
  resources :cities
  resources :geographic_informations
  resources :addresses
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
