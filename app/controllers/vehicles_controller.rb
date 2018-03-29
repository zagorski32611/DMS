class VehiclesController < ApplicationController

  def home
  end


  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(veh_params)
    @vehicle.save
    flash[:notice] = "Vehicle Saved!"
    render vehicle_path
  end


  def index
      @vehicle = Vehicle.all
  end


  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color)
  end
end
