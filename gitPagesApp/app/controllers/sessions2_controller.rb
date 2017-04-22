class Sessions2Controller < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session2][:username])
    if user && user.authenticate(params[:session2][:password])
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
