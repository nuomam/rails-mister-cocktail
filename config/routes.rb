Rails.application.routes.draw do
  root 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy]
end
