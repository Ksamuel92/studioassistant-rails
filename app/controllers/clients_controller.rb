class ClientsController < ApplicationController
  before_action :set_studio, only: [:create, :new]
  def new
    @client = Client.new
    @client.recording_sessions.build
    # byebug
  end

  def create
    client = Client.new(client_params)
    byebug
    if client.valid?
      client.save
      redirect_to '/'
    else
      flash[:alert] = "Make sure to fill out all fields."
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(
      :name,
      :email,
      :genre,
      :budget,
      :band,
      :drums,
      recording_sessions_attributes: [:studio_id, :client_id, :id, :start_date, :end_date, :hours_per_day, :per_hour]
    )
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end
end
