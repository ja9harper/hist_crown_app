require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'YOURUSERNAME',
  database: 'hist_crown_app'
)

# Log the output
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)
class App < ApplicationController
  # session NEW
  get('/') do
    if session[:current_user] # if there is a user set in the session
      redirect to("/user/#{session[:current_user][:id]}")
    else
      render(:erb, :'session/new')
    end
  end

  # session CREATE
  post('/session') do
    # look up the user by the name in params
    user = User.find(name: params[:user_name])
    if user.nil? # if there was no user found with that name
      # flash is like session, except it only lasts for ONE MORE request!
      flash[:error] = "No user found with that name!"
      redirect to('/')
    else
      # add a user to the session hash
      current_user_id = user.id
      session[:current_user]  = {id: current_user_id}
      redirect to("/user/#{current_user_id}")
    end
  end

  # session DELETE
  delete('/session') do
    # clear out the user from the session
    session[:current_user] = nil
    redirect to('/')
  end

  # viewer SHOW
  get('/user/:id') do
    @user = User.find(id: params[:id])
    render(:erb, :'user/show')
  end
end