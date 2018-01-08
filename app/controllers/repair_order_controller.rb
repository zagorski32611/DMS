class RepairOrderController < ApplicationController


  before_action :authenticate_user!


  def ro_home
  end

  def new
    @repair_order = RepairOrder.new
  end

  def create
    @repair_order = RepairOrder.new(ro_params)
    @repair_order.user_id = current_user.id if current_user
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
    params.require(:repair_order).permit(:VIN, :year, :make, :model, :trim,
                                         :miles, :color, :window_tag,
                                         :due_date, :update_time)
  end



end
