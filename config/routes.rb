Rails.application.routes.draw do
  resources :adventures
  resources :characters
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end