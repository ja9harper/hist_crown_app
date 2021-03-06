class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   include SessionHelper
  helper_method :current_user, :logged_in?, :authenticate
  protect_from_forgery with: :exception
end
