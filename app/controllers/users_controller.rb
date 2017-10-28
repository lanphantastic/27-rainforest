class UsersController < ApplicationController
  def new
    @user = User.new
    # blank user
  end

  def create
    @user = User.new

    @user.email = User.find(params[:user][:email])
    @user.password = User.find(params[:user][:password])
  end
end
