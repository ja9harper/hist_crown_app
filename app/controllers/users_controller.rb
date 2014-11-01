
class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :load_user
  #, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :authorize

  def index
    @user = User.all
    # added:
    @user = User.new
  end


  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
        # added:
        format.js   { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        # added:
        format.js   { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # ..snip..
end