class UsersController < ApplicationController
  def new
    @user = User.new
    # blank user
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "You have successfully sign up!"
      # Use _url in controllers
      redirect_to root_url
    else
      flash.now[:alert] = @user.errrors.full_messages
      render :new
    end
  end
end
