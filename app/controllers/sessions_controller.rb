class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_oauth(auth)

    if user
      session[:user_id] = user.id
      redirect_to '/routes/new'
    else
      flash[:critical] = "Action failed!"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
