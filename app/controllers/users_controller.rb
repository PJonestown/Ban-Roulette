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
      @user.bans.create
      sign_in_user(@user)
    else
      flash.now[:warning] = "Already an account under #{request.remote_ip}. Click the 'Sign in' button"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :ip_address)
  end
end
