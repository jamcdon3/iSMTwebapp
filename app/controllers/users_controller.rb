class UsersController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @user = User.find(params[:id])
    @items = Item.all
    if is_admin?
      @users = User.all
    end
  end

  def new; end

  def create
    @user = User.new(user_params)
    if @user.save
      if !is_admin?
        session[:id] = @user.id
      end
      redirect_to current_user
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
      redirect_to current_user
    else
      flash.now[:alert] = @user.errors.messages
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
