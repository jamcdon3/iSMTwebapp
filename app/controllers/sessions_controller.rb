class SessionsController < ApplicationController

  add_flash_types :alert

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      session[:id] = @user.id
      redirect_to @user
    else
      redirect_to login_path
      flash.now[:alert] = "uploading_error"
    end
  end

  def destroy
    logout
    session[:id] = nil
    redirect_to "/"
  end
end
