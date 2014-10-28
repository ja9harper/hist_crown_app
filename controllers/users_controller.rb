class UsersController < ApplicationController
  # plugin :secure_password

  get('/') do
    @users = User.all
    render(:erb, :"/users")
  end

  get('/new') do
    @user = User.create(id: params[:id])
    render(:erb, :"users/new")
  end

  # user SHOW
  get('/users/:id') do
    @user = User.find(params[:id])
    render(:erb, :'users/show')
  end

  #user UPDATE
  put('/users/:id') do
    @user = User.find(params[:id])
    @user.update(params["user"])
    redirect to("/users/#{@user.id}")
  end

  # post('/users') do
  # end

  # user DELETE
  delete('users/:id') do
    @user = User.find(params[:id])
  end

end