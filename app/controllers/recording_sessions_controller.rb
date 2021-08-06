class RecordingSessionsController < ApplicationController
  before_action :require_login
  before_action :set_recordingsession, except: [:new, :create, :index]
  def index
  @studios = current_user.studios
  end

 def new
    @recordingsession = RecordingSession.new
    @recordingsession.build_client
  end

  def create
    @recordingsession = RecordingSession.new(recordingsession_params)
    @recordingsession.studio_id = params[:studio_id]
    # byebug
    if @recordingsession.valid?
      @recordingsession.save
      redirect_to recording_sessions_path
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
    # byebug
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
    params.require(:recording_session).permit(
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
