class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def require_login!
    redirect_to root_path, flash: {error: 'You must be logged in to do that.'} unless current_user
  end
end
