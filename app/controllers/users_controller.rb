class UsersController < ApplicationController
  before_action :set_user, :require_login, only: [:show, :edit, :update, :destroy]
  before_action :set_new_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def show

  end

  def edit

  end

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for creating an account. Let's begin by adding your studio!"
      redirect_to new_studio_path
    else
      render :new
    end
  end

  def update
    @user.update(user_params)
    if @user.valid?
      flash[:notice] = 'Session Sucessfully Updated'
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Invalid Update'
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def set_new_user
    @user = User.new
  end

  def set_user
    @user = User.find_by(id: session[:user_id])
  end
end
