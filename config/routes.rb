Leaderboard::Application.routes.draw do

  # omniauth
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout

  root to: 'matches#index', :as => 'root'
  resources :players
  resources :matches
  resources :games
end
