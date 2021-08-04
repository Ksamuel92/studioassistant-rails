class RecordingsessionsController < ApplicationController
  before_action :set_recordingsession, except: [:new, :create]
  def index
  end

  def new
    # byebug
    if params[:studio_id] && (@studio = Studio.find_by_id(params[:studio_id]))
      @recordingsession = @studio.recordingsessions.build
      @client = @recordingsession.build_client
      render 'recordingsessions/new'
    end
  end

  def create
    recordingsession = Recordingsession.new(recordingsession_params)
    byebug
    if recordingsession.valid?
      recordingsession.save
      redirect_to '/'
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

  def recordingsession_params
  end

  def set_recordingsession
    @recordingsession = Recordingsession.find(params[:id])
  end
end
