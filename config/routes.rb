Rails.application.routes.draw do
  resources :restaurants do
    resources :plates, only: [:new, :create]
  end
  resources :plates, only: [:show, :destroy]
end
