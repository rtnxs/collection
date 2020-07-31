Rails.application.routes.draw do
  root "items#index"
  devise_for :users

  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    resources :items do
      resources :comments, only: [:create, :destroy]
      resources :photos, only: [:create, :destroy]

      post :show, on: :member
    end
  end
  resources :types
  resources :users
end
