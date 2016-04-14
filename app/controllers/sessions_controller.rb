class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "logged in, SEAT YO SELF - cucumber"
    else
      flash.now[:alert] = "Wong password SUCK IT"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "See ya soon!  BAIIIIIIIIIiiii...."
  end
end
