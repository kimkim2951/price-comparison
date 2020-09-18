Rails.application.routes.draw do
  resources :stores
  resources :items
  root 'stores#index'
end
