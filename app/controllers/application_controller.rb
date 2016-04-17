class ApplicationController < ActionController::Base
  helper_method :current_user
  include DeviseTokenAuth::Concerns::SetUserByToken
  skip_before_action :verify_authenticity_token

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def preflight
    render nothing: true
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
