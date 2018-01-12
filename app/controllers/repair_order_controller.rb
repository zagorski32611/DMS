class RepairOrderController < ApplicationController


  #before_action :authenticate_user!


  def repair_order
  end

  def new
    @repair_order = RepairOrder.new(ro_params)
    #@repair_order.save!(ro_params)
  end

  def create
    @repair_order = RepairOrder.new(ro_params)

    if @repair_order.save!
      flash[:success] = "Repair order created!"
      redirect_to new_repair_order_path
    else
      render 'new'
    end
  end

  def show
    @repair_order = RepairOrder.find(ro_params[:id])
  end

  def index
    @repair_order = RepairOrder.find(ro_params[:id])
  end


  private

  def ro_params
    params.permit(:VIN, :window_tag,
                  :color, :year, :make, :model, :trim, :miles, :due_date,
                  :update_time, :line)
  end


end
