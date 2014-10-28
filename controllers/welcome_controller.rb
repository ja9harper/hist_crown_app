class WelcomeController < ApplicationController
  def index
    if session[:user_id]
      user = User.find(session[:user_id])
      redirect_to(user_path(user))
    else
      redirect_to(login_path)
    end
  end
end