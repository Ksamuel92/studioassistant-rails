class StudiosController < ApplicationController
  before_action :require_login
  before_action :set_studio, except: [:new, :create, :index]

  def index
    @studios = current_user.studios
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.user_id = session[:user_id]
    if @studio.valid?
      @studio.save
      redirect_to studios_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @studio.update(studio_params)
    if @studio.valid?
      flash[:notice] = 'Studio Sucessfully Updated'
      redirect_to studio_path(@studio)
    else
      flash[:notice] = 'Invalid Update'
      render :edit
    end
  end

  def destroy
    @studio.destroy
    redirect_to studios_path
  end

  private

  def studio_params
    
    params.require(:studio).permit(
      :name,
      :email,
      :description,
      :address_line_1,
      :address_line_2,
      :city,
      :state,
      :zip_code,
      :user_id,
      :daw,
      :rental_cost
    )
  end

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
