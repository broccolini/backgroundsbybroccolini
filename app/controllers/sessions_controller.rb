class SessionsController < ApplicationController
  def create
    auth  = request.env["omniauth.auth"]
    login = request.env["omniauth.auth"]["extra"]["user_hash"]["login"]

    if %w(broccolini).include?(login)
      user = User.find_by_provider_and_uid(auth["provider"], auth["uid"].to_s) || User.create_with_omniauth(auth)
      session[:user_id] = user.id
    end
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
