module SessionsHelper
  attr_writer :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def sign_in(user)
    session[:user_id] = user.id
    flash[:success] = 'Signed in successfully'
    redirect_to root_url
  end

  def signed_in?
    !current_user.nil?
  end
end
