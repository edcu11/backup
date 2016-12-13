class UsersController < ApplicationController
  skip_before_action :authenticate
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      UserNotifier.signup_email(@user).deliver
      redirect_to root_path, notice: "Se agrego exitosamente."
    else
      render :new
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update_attributes(user_params)
      UserNotifier.data_edit(@user).deliver
      redirect_to profile_path,  notice: "Se edito con exito companero"
    else
      render :edit
    end
  end


  protected

  def user_params
    params.require(:user).permit!
  end
end
