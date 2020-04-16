class ApplicationController < ActionController::Base
  helper_method :is_logged_in?
  helper_method :is_admin?
  before_action :authorize, except: [:current_user, :is_admin?, :is_logged_in?]

  def current_user
    User.find_by(id: session[:id])
  end

  def is_logged_in?
    current_user.present?
  end

  def is_admin?
    if is_logged_in?
      return current_user.admin?
    else
      return false
    end
  end

  private

  def authorize
    if !is_logged_in?
      redirect_to '/login', alert: "Not authorized"
    end
  end

end
