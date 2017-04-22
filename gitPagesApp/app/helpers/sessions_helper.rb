module SessionsHelper
<<<<<<< HEAD
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(user_id)
    @current_user = nil
  end
=======
>>>>>>> d662e4e880b95352f6be291bb9bc96f1109e25e9
end
