class SessionController < ApplicationController
  get('/session') do
    render(:erb, :"session/new")
  end 

  post('/session') do
      user = User.find(name: params[:user_name])
        if user.nil? 
          flash[:error] = "No user found with that name!"
          redirect to('/')
        else
          current_user_id = user.id
          session[:current_user]  = {id: current_user_id}
          redirect to("/users/#{current_user_id}")
        end
  end

  delete('/session') do
    session[:current_user] = nil
    redirect to('/')
  end

end