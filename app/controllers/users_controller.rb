class UsersController < ApplicationController
before_action :require_login, only: [:show]
  def new
    @user = User.new
  end

  def show

  end

  def create
    user = User.new(user_params)
    if user.valid? 
      user.save
      session[:user_id] = user.id
      redirect_to 'home'
    else
      flash[:alert] = 'User needs a name, password, and unique email.'
      render :new
    end
  end

  def home

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
