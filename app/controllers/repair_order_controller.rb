class RepairOrderController < ApplicationController

  before_action :authenticate_user!
  respond_to :html, :js

  def index
    @repair_order = RepairOrder.search(params[:term])
  end

  def show
    @repair_orders = RepairOrder.last
  end

  def new
    @repair_order = RepairOrder.new
  end

  def edit
    @repair_order = RepairOrder.find(params[:id])
  end

  def create
    @repair_order = RepairOrder.new(ro_params)
    @repair_order.save
    redirect_to repair_orders_path
    #raise "Found create!"
  end

  def update
    @repair_order = RepairOrder.find(params[:id])
    if @repair_order.update(ro_params)
      flash[:success] = "Successfully updated repair order"
      redirect_to repair_orders_path
    else
      flash[:alert] = "Error updating repair order"
      render :edit
    end
  end

  def destroy
    @repair_order = RepairOrder.find(params[:id])
    if @repair_order.present?
      @repair_order.destroy
    end
    redirect_to repair_orders_path
  end

  def repair_order
  end

  private

  def ro_params
    params.require(:repair_order).permit(:VIN, :window_tag,
                  :color, :year, :make, :model, :trim, :miles, :due_date,
                  :update_time, line: {})
  end

end
