class SessionsController < ApplicationController
  skip_before_action :authenticate
  skip_before_action :authenticate_u, only: [:new, :create]

  def new
  	if current_user
  		redirect_to root_path
  	end
  end

  def create
  	password = params[:session][:password]
    username = params[:session][:username]


    @user = User.find_by(email: username) || User.find_by(username: username)

  	if @user && @user.authenticate(password)
  		login(@user)
  	else
  		redirect_to login_path, flash: { error: "Email o Password incorrecto"}
  	end
  end

  def show
    @current_user = current_user
  end

  def destroy
  	logout
  end

end
