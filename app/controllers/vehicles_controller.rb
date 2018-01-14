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
    @vehicle.save
    redirect_to vehicles_path
  end

  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color)
  end
end
