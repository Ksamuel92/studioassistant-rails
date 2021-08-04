class StudiosController < ApplicationController
  def index
    # @studios = List of all Users Studios
  end

  def new
  @studio = Studio.new
  end

  def create
    studio = Studio.new(studio_params)
    studio.user_id = session[:user_id]
    if studio.valid?
      studio.save
      redirect_to studio_path(studio)
    else
      flash[:alert] = "Make sure to fill out all fields."
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
    params.require(:studio).permit(:name, :email, :address, :user_id, :daw, :rental_cost)
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
