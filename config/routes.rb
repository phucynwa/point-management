Rails.application.routes.draw do
  resources :users, except: %i(index destroy)
end
