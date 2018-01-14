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
      flash[:notice] = "Vehicle Saved!"
      render new_vehicle_path
    else
      flash[:alert] = "Vehicle already in system!"
    end
  end



  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color)
  end
end
