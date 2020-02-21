class TaggingsController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @tagging = Tagging.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @tagging = Tagging.new(tagging_params)
    @tagging.pokemon = @pokemon

    if @tagging.save
      redirect_to @pokemon.box
    else
      render :new
    end
  end

  private

  def tagging_params
    params.require(:tagging).permit(:tag_id)
  end
end
