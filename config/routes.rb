Rails.application.routes.draw do
  resources :boxes, only: [:show] do
    resources :pokemons, only: [:new, :create]
  end

  resources :pokemons, only: [:destroy] do
    resources :taggings, only: [:new, :create]
  end
end
