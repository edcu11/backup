class PokesController < ApplicationController
  skip_before_action :authenticate, except: [:new, :create, :edit, :update, :destroy]

  def index
    @pokes = Poke.order(:name)
  end

  def show
    @poke = Poke.find(params[:id])
    @userpok = UserPokemon.new

  end

  def new
    @poke = Poke.new
  end

  def create
    @poke = Poke.new(poke_params)

    if @poke.save
      redirect_to pokes_path, notice: "Se agrego exitosamente."
    else
      render :new
    end
  end

  def edit
    @poke = Poke.find(params[:id])
  end

  def update
    @poke = Poke.find(params[:id])

    if @poke.update_attributes(poke_params)
      redirect_to poke_path(@poke),  notice: "Se edito con exito companero"
    else
      render :edit
    end
  end

  def destroy
    @poke = Poke.find(params[:id])
    @poke.destroy
    redirect_to pokes_path,  notice: "Se borro con exito companero"
  end

  protected

  def poke_params
    params.require(:poke).permit(:name, :attack, :defense, :avatar_url)
  end
end
