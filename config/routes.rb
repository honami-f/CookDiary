Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :recipes do
    resources :comments, only: :create
    resource :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :users do
    member do
      get :likes
    end
  end
  resources :rakutens, only: :index
end
