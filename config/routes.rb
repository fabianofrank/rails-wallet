Rails.application.routes.draw do
  devise_for :users
  root to: "splash#index"
  resources :groups do
    resources :investments
  end

  resources :users
end
