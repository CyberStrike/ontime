class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def preflight
    render nothing: true
  end

  private
   def allow_cross_origin_requests
     headers['Access-Control-Allow-Origin'] = '*'
     headers['Access-Control-Request-Method'] = '*'
     headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
     headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
     headers['Access-Control-Max-Age'] = '1728000'
   end

   def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
end
