class VehiclesController < ApplicationController
  before_action :authenticate_user!

  def index
    @vehicles = Vehicle.search(params[:term])
  end

  def show
    @vehicles.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(veh_params)
    @vehicle.save
    flash[:notice] = "Vehicle Saved!"
    redirect_to vehicles_path
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update(veh_params)
      flash[:success] = "Successfully updated vehicle"
      redirect_to vehicles_path
    else
      flash[:alert] = "Error updating vehicle"
      render :edit
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.present?
      @vehicle.destroy
    end
    redirect_to vehicles_path
  end

  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color, :term)
  end
end
