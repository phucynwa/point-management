Rails.application.routes.draw do
  root "static_pages#home"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "signup", to: "users#new"
  post "signup", to: "users#create"
  resources :users, except: :destroy
  resources :courses, except: :destroy
  resources :learnings, except: %i(edit update)
  resources :lectures, except: %i(edit update)
end
