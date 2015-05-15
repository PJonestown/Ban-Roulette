module SessionsHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user=(user)
    @current_user = user
  end

  def sign_in(user)
    session[:user_id] = user.id
    redirect_to root_url #flash
  end

  def signed_in?
    !current_user.nil?
  end
end
