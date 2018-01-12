class RepairOrderController < ApplicationController


  #before_action :authenticate_user!


  def repair_order
  end

  def new
    @repair_order = RepairOrder.new
    #@repair_order.save(ro_params)
  end

  def create
    @repair_order = RepairOrder.new(ro_params)
    @repair_order.save
    redirect_to repair_orders_path
    #raise "Found create!"
  end


  def show
    @repair_order = RepairOrder.last
  end

  def index
    #@repair_order = RepairOrder.find(ro_params)
  end


  private

  def ro_params
    params.require(:repair_order).permit(:VIN, :window_tag,
                  :color, :year, :make, :model, :trim, :miles, :due_date,
                  :update_time, :line)
  end
end
