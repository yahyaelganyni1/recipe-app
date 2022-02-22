Rails.application.routes.draw do
  resources :recipes
  root to: 'foods#index'
  devise_for :users
  resources :foods

end
