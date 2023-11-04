Rails.application.routes.draw do
  devise_for :users
  get 'recipes/index'
  root to: "recipes#index"
  get 'recipes/new', to: 'recipes#new'

end
