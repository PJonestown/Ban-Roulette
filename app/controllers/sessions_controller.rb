class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(ip_address: request.remote_ip)
    if user && user.authenticate(params[:session][:username])
      log_in user
      redirect_to users_path
      #log in user
    else
      render 'new'
    end
  end
end
