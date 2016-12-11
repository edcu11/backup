class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "Se agrego exitosamente."
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit!
  end
end
