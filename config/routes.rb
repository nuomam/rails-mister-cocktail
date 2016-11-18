Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy]
end
