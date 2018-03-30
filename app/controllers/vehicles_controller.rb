class VehiclesController < ApplicationController
  before_action :authenticate_user!


  def home
  end


  def show
    @vehicles.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(veh_params)
    @vehicle.save
    flash[:notice] = "Vehicle Saved!"
    render vehicles_index_path
  end


  def index
      @vehicles = Vehicle.all
  end


  private

  def veh_params
    params.require(:vehicle).permit(:VIN, :year, :make, :model, :trim, :miles,
                                    :color)
  end
end
