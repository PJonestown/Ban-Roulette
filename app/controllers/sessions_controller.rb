class SessionsController < ApplicationController
  def create
    user = User.find_by(ip_address: request.remote_ip)
    if user
      session[:user_id] = user.id
      redirect_to root_url #flash
    else
      redirect_to new_user_path #flash 'no associated account with ip'
    end
  end
end
