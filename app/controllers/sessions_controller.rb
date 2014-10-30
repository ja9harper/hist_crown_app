class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # binding.pry
      log_in(user)
      redirect_to(stories_path)
    else
      flash[:error] = "Incorrect username or password."
      redirect_to(login_path)
    end
  end

  def destroy
    log_out!
    redirect_to(login_path)
  end
end