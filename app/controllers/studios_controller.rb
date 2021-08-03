class StudiosController < ApplicationController
  before_action :set_studio, except: [:new, :create]
  def index
    # @studios = List of all Users Studios
  end

  def new
    @studio = Studio.new
  end

  def create
    studio = Studio.new(studio_params)
    if studio.valid? 
      studio.save
      redirect_to studio_path(studio)
    else
      flash[:alert] = "Make sure to fill out all fieilds."
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
    params.require(:studio).permit(:name, :address, :daw, :type)
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
