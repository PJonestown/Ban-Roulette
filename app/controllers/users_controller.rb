class UsersController < ApplicationController
  #before_filter :set_ip_address, :only => :create

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path 
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :ip_address).merge(
        ip_address: request.remote_ip)
    end
end
