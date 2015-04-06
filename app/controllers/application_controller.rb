class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Devise - force the user to redirect to the login page if the user was not logged in
  # TODO - comment out the line below for the root page login
  # before_action :authenticate_user!
end
