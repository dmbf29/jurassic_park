Rails.application.routes.draw do
  resources :parks, only: [:show] do
    resources :dinosaurs, only: [:new, :create]
  end
  resources :dinosaurs, only: :destroy do
    resources :meals, only: [:new, :create]
  end
  resources :meals, only: [:destroy]
end
