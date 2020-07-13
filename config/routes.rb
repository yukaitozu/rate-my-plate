Rails.application.routes.draw do
  root to: "restaurants#index"
  resources :restaurants do
    resources :plates, only: [:new, :create]
  end
  resources :plates, only: [:show, :edit, :update, :destroy]
end
