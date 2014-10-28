class ApplicationController < Sinatra::Base

  ########################
  # Configuration
  ########################
  
  set :app_file,  File.expand_path(File.dirname(__FILE__), '../')


  helpers ApplicationHelper
  enable :method_override

  enable :sessions
  
  set :app_file,  File.expand_path(File.dirname(__FILE__), '../')

  helpers ApplicationHelper

  enable :method_override
  enable :sessions

  set :session_secret, 'super secret'

  configure :test, :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end
  # use Rack::Flash
end
