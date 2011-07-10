class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :sluggify

  private

  def require_login
    unless current_user
      redirect_to root_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def sluggify(string)
    string.downcase.gsub(/ |_/, "-")
  end
end
