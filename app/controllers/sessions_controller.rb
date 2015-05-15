class SessionsController < ApplicationController
  def create
    user = User.find_by(ip_address: request.remote_ip)
    if user
      sign_in(user)
    else
      flash[:warning] = "No associated account under #{request.remote_ip}. Create a new user"
      redirect_to new_user_path
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end
