Rails.application.routes.draw do
  resources :cocktail, only: [ :index, :new, :create, :show ] do
    resources :dose, only: [ :new, :create, :destroy]
  end
end
