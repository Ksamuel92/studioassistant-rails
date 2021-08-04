class ClientsController < ApplicationController
  def new
    if params[:studio_id] && (@studio = Studio.find_by_id(params[:studio_id]))
      @client = @studio.clients.build
      @recordingsession = @client.recordingsessions.build
    end
  end

  def create
    byebug
    client = Client.new(client_params)
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
      :name, :email, :genre, :budget, :band, :drums, 
      recordingsessions_attributes: [:start_date, :end_date, :hours_per_day, :per_hour])
  end
end
