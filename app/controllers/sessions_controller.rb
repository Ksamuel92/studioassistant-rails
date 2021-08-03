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
    # byebugex
    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to '/'
    else
      flash[:error] = 'Invalid Name or Password'
      render 'new'
    end
  end

  def destroy
    session.destroy(:user_id)
  end

end