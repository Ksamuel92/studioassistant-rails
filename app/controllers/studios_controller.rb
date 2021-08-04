class StudiosController < ApplicationController
  before_action :require_login
  before_action :set_studio, except: [:new, :create, :index]

  def index
   @studios = current_user.studios
  end

  def new
  @studio = Studio.new
  end

  def create
    studio = Studio.new(studio_params)
    studio.user_id = session[:user_id]
    if studio.valid?
      studio.save
      redirect_to confirm_path
    else
      flash[:alert] = 'Make sure to fill out all fields.'
      render :new
    end
  end

  def show
    
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  private

  def studio_params
    params.require(:studio).permit(:name, :email, :description, :address, :user_id, :daw, :rental_cost)
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
