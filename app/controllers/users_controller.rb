class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :load_user
  #, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :authorize
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    if !load_user
      redirect_to root_path
    elsif logged_in?
      redirect_to login_path
    else
      render(:show)
    end
  end
    #make sure the user is autheticated

    #make sure authenticated user is the user

    #who is trying o access this? are they a user
  #   current_sessions_user = User.find_by(id: session[:user_id])
  #   if !current_sessions_user.present?
  #     redirect_to login_path
  #   elsif current_sessions_user != @user
  #     redirect_to user_path(current_sessions_user)
  #   else
  #     render(:show)
  # end
end
