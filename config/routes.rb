Rails.application.routes.draw do
  root "items#index"
  devise_for :users

  resources :items do
    resources :comments, only: [:create, :destroy]
    resources :photos, only: [:create, :destroy]

    post :show, on: :member
  end

  resources :types
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
