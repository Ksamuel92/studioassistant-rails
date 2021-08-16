class SessionsController < ApplicationController
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def new
  end

  def create

    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to recording_sessions_path
    else
      flash[:error] = 'Invalid Name or Password'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
