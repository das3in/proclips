Rails.application.routes.draw do

  root to: "tournaments#index"

  resources :tournaments
  resources :matches do
    resources :teamfights
  end
  resources :teams
  resources :leagues
end
