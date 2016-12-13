class CatpoksController < ApplicationController

  
  def new
    @catpok = Catpok.new
  end

  def create
  	@catpok = Catpok.new(catpok_params)

    if @catpok.save
      redirect_to pokes_path,  notice: "Se agrego con exito maestro pokemon"
    else
      render :new
    end
  end

  protected

  def catpok_params
    params.require(:catpok).permit!
  end
end
