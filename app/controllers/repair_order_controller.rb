class RepairOrderController < ApplicationController


  #before_action :authenticate_user!


  def repair_order
  end

  def new

    @repair_order = RepairOrder.new(ro_params)
    #@repair_order.save(ro_params)
  end

  def create
    @repair_order = RepairOrder.new(ro_params)
    @repair_order.save
    redirect_to repair_orders_path

  end


  def show
    @repair_order = RepairOrder.last
  end

  def index
    #@repair_order = RepairOrder.find(ro_params)
  end


  private

  def ro_params
    params.require(:repair_orders).permit(:VIN, :window_tag,
                  :color, :year, :make, :model, :trim, :miles, :due_date,
                  :update_time, :line)  if params[:repair_orders].present?
  end
end
