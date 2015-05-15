class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params.merge(ip_address: request.remote_ip))
    if @user.save
      sign_in(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :ip_address)
  end
end
