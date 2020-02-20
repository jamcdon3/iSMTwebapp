class AdminController < ApplicationController
  def show
    @user = User.all
  end

  def new; end

  def create
    @user = User.new(user_params)

    if @user.save
      #session[:id] = @user.id
      redirect_to @user
    else
      flash.now[:alert] = @user.errors.messages
      respond_to do |format|
        format.js
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    params["user"].delete_if {|key, value| puts value; value.blank?}

    if @user.update(user_params)
      redirect_to @user
    else
      flash.now[:alert] = @user.errors.messages
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
