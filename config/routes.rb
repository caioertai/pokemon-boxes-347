Rails.application.routes.draw do
  resources :boxes, only: [:show] do
    resources :pokemons, only: [:new, :create]
  end

  # DELETE /pokemons/56
  resources :pokemons, only: [:destroy]
end
