class ApplicationController < ActionController::Base
rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

private

  def require_login
    unless current_user
      redirect_to '/'
      flash[:alert] = "You must login to view that page"
    end
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def record_not_found
    render plain: "404 Not Found", status: 404
  end
end
