class SessionsController < ApplicationController
  
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/login'
    end
  end

  def create
    @user = User.find_by(name: params[:name])
    return render 'new' unless @user&.authenticate(params[:password])

    sessions[:user_id] = @user.id
    redirect_to '/'
  end
end