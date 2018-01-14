class VehiclesController < ApplicationController

  def home
  end

  def index
    @vehicle = Vehicle.last
  end

  def show
  end

  def new
    @vehicles = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(veh_params)
    if @vehicle.save
      flash.now[:success] = "Vehicle Saved!"
      redirect_to vehicles_path
    else
      flash.now[:error] = "Vehicle already exists."
      redirect_to new_vehicle_path
    end
  end

  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color)
  end
end
