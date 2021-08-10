class RecordingSessionsController < ApplicationController
  before_action :require_login
  before_action :set_studio, only: [:new, :create, :show, :edit]
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
    # @studio = Studio.find_or_create_by(id: params[:studio_id])
    if @recordingsession.valid?
      @recordingsession.save
      redirect_to studio_recording_session_path(@recordingsession.studio, @recordingsession)
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
    @recordingsession.update(recordingsession_params)
    if @recordingsession.valid?
        flash[:notice] = "Session Sucessfully Updated"
        render studio_recording_session_path(@recordingsession.studio, @recordingsession)
    else
      flash[:notice] = "Invalid Update"
      render :edit
    end
  end

  def destroy
  end

  def this_week
  
  end

  private

  def recordingsession_params
    params.require(:recording_session).permit(:id, :studio_id,
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

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end
end
