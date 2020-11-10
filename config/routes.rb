Rails.application.routes.draw do
  resources :adventures
  resources :characters
  resources :players

  resources :players do 
    resources :characters
  end 


  get "homepage", to: "home#index", as: "homepage"
  root 'home#index'

  get "signup", to: "players#new", as: "signup"
  get "login", to: "sessions#new", as: "login"

end
