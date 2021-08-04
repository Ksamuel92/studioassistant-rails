class RecordingSessionsController < ApplicationController
  before_action :set_recordingsession, except: [:new, :create]
  def index
  end

 def new
    @recordingsession = RecordingSession.new
    @recordingsession.build_client
    # byebug
  end

  def create
    recordingsession = RecordingSession.new(recordingsession_params)
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
