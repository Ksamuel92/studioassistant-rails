class ClientsController < ApplicationController
  before_action :set_studio, only: [:create, :new]
  def new
  end

  def create
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
