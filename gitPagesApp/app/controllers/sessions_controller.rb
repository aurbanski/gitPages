class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])

    if user.valid?
      session[:user_id] = user.id
      redirect_to request.env['omniauth.origin']
    end
  end

  def destroy
<<<<<<< HEAD
    logout
    redirect_to root_url
=======
    reset_session
    redirect_to request.referer
>>>>>>> d662e4e880b95352f6be291bb9bc96f1109e25e9
  end
end
