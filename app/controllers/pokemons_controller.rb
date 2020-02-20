class PokemonsController < ApplicationController
  def new
    @box     = Box.find(params[:box_id])
    @pokemon = Pokemon.new
  end

  def create
    @box     = Box.find(params[:box_id])
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.box = @box

    if @pokemon.save
      redirect_to @box
    else
      render :new
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    redirect_to @pokemon.box
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
