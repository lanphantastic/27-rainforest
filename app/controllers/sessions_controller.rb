class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])

      # Put the wristband on the User
      session[:user_id] = u.id
      redirect_to root_url
    else
      flash[:alert] = "You need to sign up!"
      render :new
    end

  end

  def destroy
  end
end

# There are three magic hashes available to you in a Rails Controller

# params
# session
# flash
