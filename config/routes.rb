Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants do
    resources :plates, only: [:new, :create]
  end
  resources :plates, only: [:show, :edit, :update, :destroy]
end
