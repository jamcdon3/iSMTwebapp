class SessionsController < ApplicationController
  skip_before_action :authorize
  add_flash_types :alert

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      session[:id] = @user.id
      redirect_to @user
    else
      redirect_to login_path, alert: "Incorrect username and password"
    end
  end

  def destroy
    logout
    session[:id] = nil
    redirect_to "/"
  end
end
