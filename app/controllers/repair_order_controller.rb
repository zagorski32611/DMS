class RepairOrderController < ApplicationController


  #before_action :authenticate_user!


  def repair_order
  end

  def new
<<<<<<< HEAD
    @repair_order = RepairOrder.new(ro_params)
    #@repair_order.save!(ro_params)
  end

  def create
    @repair_order = RepairOrder.new(ro_params)

    if @repair_order.save!
=======
    @repair_order = RepairOrder.new

  end

  def create
    @repair_order = RepairOrder.create(ro_params)
    #@repair_order.user_id = current_user.id
    if @repair_order.save
>>>>>>> 3730132dd9ebbe77835720ba537f1fc28be306c0
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
<<<<<<< HEAD
    params.permit(:VIN, :window_tag,
                  :color, :year, :make, :model, :trim, :miles, :due_date,
                  :update_time, :line)
=======
    params.permit(:VIN, :window_tag, :color, :year, :make, :model, :trim, :mile, :due_date, :update_time, :line)
>>>>>>> 3730132dd9ebbe77835720ba537f1fc28be306c0
  end


end
