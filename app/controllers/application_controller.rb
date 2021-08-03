class ApplicationController < ActionController::Base
  
  def require_login
    unless current_user
      redirect_to '/'
      flash[:alert] = "You must login to view that page"
    end
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end
end
