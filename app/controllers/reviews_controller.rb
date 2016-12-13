class ReviewsController < ApplicationController

  skip_before_action :authenticate

  def new
      @poke = Poke.find(params[:poke_id])
      @review = @poke.reviews.build
  end

  def create
    @poke = Poke.find(params[:poke_id])
    @review = @poke.reviews.build(reviews_params)

    @review.user_id = current_user.id

    if @review.save
      redirect_to @poke,  notice: "Se agrego con exito companero"
    else
      render :new
    end
  end

  def destroy
    @poke = Poke.find(params[:poke_id])
    @review = @poke.reviews.find(params[:id])
    @review.destroy
    redirect_to @poke,  notice: "Se borro con exito companero"
  end

  

protected


  def reviews_params
        params.require(:review).permit!
  end
end
