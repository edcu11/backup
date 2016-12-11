class UserPokemonsController < ApplicationController
  def create
    @user_pokemon = UserPokemon.new(user_pokemon_params)

    if @user_pokemon.save
      redirect_to pokes_path,  notice: "Se agrego con exito maestro pokemon"
    else
      render :new
    end
  end

  def user_pokemon_params
    params.require(:user_pokemon).permit!
  end
end
