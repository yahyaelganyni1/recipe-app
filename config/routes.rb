Rails.application.routes.draw do
  root to: 'foods#index'
  devise_for :users
  resources :foods
  resources :recipes
  get 'public_recipes', to: 'recipes#public_recipes'
end
