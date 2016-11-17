Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end
