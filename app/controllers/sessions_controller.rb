class SessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      session[:id] = @user.id
      redirect_to @user
    else
      redirect_to login_path
    end
  end

  def destroy
    logout
    session[:id] = nil
    redirect_to "/"
  end
end
