class RepairOrderController < ApplicationController


  before_action :authenticate_user!


  def ro_home
  end

  def new
    @repair_order = RepairOrder.new
  end

  def create
    @repair_order = RepairOrder.create(ro_params)
    @repair_order.user_id = current_user.id
    if @repair_order.save
      flash[:success] = "Repair order created!"
      redirect_to ro_home_path
    else
      render 'new'
    end
  end

  def show
    @repair_order = RepairOrder.find(params[:id])
  end


  private

  def ro_params
    params.require(:repair_order).permit(:VIN, :window_tag, :color, :year, :make, :model, :trim, :mile, :due_date, :update_time, :line)
  end


end
