class RecordingsessionsController < ApplicationController
  before_action :set_recordingsession, except: [:new, :create]
  def index
  end

  def new
    @recordingsession = RecordingSession.new
  end

  def create
    recordingsession = RecordingSession.new(recordingsession_params)
    if recordingsession.valid?
      recordingsession.save
      redirect_to recordingsession_path(recordingsession)
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
    params.require(:recordingsession).permit(:start_date, :end_date, :hours_per_day, :band?, :drums?, :genre, :budget)
  end

  def set_recordingsession
    @recordingsession = RecordingSession.find(params[:id])
  end
end
