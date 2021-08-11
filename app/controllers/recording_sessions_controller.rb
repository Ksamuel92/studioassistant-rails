class RecordingSessionsController < ApplicationController
  before_action :require_login
  before_action :set_studio, only: %i[new create show edit update]
  before_action :set_recordingsession, except: %i[new create index thisweek]
  
  def index
    @studios = current_user.studios
    @recordingsessions = current_user.recording_sessions
  end

  def new
    @recordingsession = RecordingSession.new
    @recordingsession.build_client
  end

  def create
    @recordingsession = RecordingSession.new(recordingsession_params)
    if @recordingsession.valid?
      @recordingsession.save
      redirect_to studio_recording_session_path(@recordingsession.studio, @recordingsession)
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
    @recordingsession.update(recordingsession_params)
    if @recordingsession.valid?
      flash[:notice] = 'Session Sucessfully Updated'
      redirect_to studio_recording_session_path(@recordingsession.studio, @recordingsession)
    else
      flash[:notice] = 'Invalid Update'
      render :edit
    end
  end

  def destroy
    @recordingsession.destroy
    redirect_to recording_sessions_path
  end

  def thisweek
    @recordingsessions = current_user.recording_sessions.this_week
    render 'recording_sessions/index'
  end

  private

  def recordingsession_params
    params.require(:recording_session).permit(
      :id,
      :studio_id,
      :start_date,
      :hours_per_day,
      :per_hour,
      client_attributes: %i[id name email genre budget band drums]
    )
  end

  def set_recordingsession
    @recordingsession = RecordingSession.find(params[:id])
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end
end
