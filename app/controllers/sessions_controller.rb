class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find by(ip_address: request.remote_ip)
    if user && user.authenticate(params[:session][:username])
      #log in user
    else
      render 'new'
    end
  end
end
