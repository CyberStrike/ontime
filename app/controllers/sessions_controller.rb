class SessionsController < ApplicationController
  def create
    # response you get store in auth variable
    auth = request.env["omniauth.auth"]
    # assign the response and the accept extra to get ride of extra information
    session[:omniauth] = auth.except('extra')
    # this gets the create it sign in omniauth and passes it the resonse
    user = User.sign_in_from_omniauth(auth)
    # basicly log in
    session[:user_id] = user.id
    redirect_to root_url, notice: "SIGNED IN"
  end

  def destroy
   session[:user_id] = nil
   session[:omniauth] = nil
   redirect_to root_url, notice: "SIGNED OUT"
  end
end
