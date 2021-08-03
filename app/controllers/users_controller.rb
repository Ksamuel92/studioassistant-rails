class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.valid? 
      user.save
      session[:user_id] = user.id
      redirect_to 'home'
    else
      flash[:alert] = "User needs a name, password, and a unique email."
      render :new
    end
  end

end
