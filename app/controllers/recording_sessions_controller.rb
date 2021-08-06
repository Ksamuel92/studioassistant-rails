class RecordingSessionsController < ApplicationController
  before_action :require_login
  before_action :set_recordingsession, except: [:new, :create, :index]
  def index
  @studios = current_user.studios
  end

 def new
    @studio = Studio.find_or_create_by(params[:studio_id])
    @recordingsession = RecordingSession.new
    @recordingsession.build_client
end

  def create
    # byebug
    @recordingsession = RecordingSession.new(recordingsession_params)
    @studio = Studio.find_or_create_by(params[:studio_id])
    if @recordingsession.valid?
      @recordingsession.save
      redirect_to recording_session_path(@recordingsession)
    else
      flash[:alert] = "Make sure to fill out all fields."
      render :new
    end
  end

  def show 
  end

  def edit
    @studio = Studio.find_by(params[:studio_id])
    @recordingsession = RecordingSession.find_by(id: params[:id])
  end
  
  def update
    @recordingsession.update(recordingsession_params)
    if @recordingsession.valid?
        flash[:notice] = "Session Sucessfully Updated"
        render :show
    else
      flash[:notice] = "Invalid Update"
      render :edit
    end
  end

  def destroy

  end

  private

  def recordingsession_params
    params.require(:recording_session).permit(:studio_id,
      :start_date,
      :end_date,
      :hours_per_day,
      :per_hour,
      client_attributes: [:id, :name, :email, :genre, :budget, :band, :drums]
    )
  end

  def set_recordingsession
    @recordingsession = RecordingSession.find(params[:id])
  end
end
