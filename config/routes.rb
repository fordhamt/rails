Rails.application.routes.draw do
  resources :players do
    resources :stats
  end

  resources :stats
  get 'players/new' 
  get 'addplayer' => 'players#new'

  root 'players#index'
end
