class RecSessionsController < ApplicationController
  before_action :set_recsession, except: [:new, :create]
  def index
    # @recsessions = List of all Users recsessions
  end

  def new
    @recsession = RecSession.new
  end

 
  def create
    recsession = RecSession.new(recsession_params)
    if recsession.valid? 
      recsession.save
      redirect_to recsession_path(recsession)
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

  def recsession_params
    params.require(:recsession).permit(:name, :address, :daw, :type)
  end

  def set_recsession
    @recsession = recsession.find(params[:id])
  end
end
