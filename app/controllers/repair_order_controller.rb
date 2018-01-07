class RepairOrderController < ApplicationController

  before_action :authenticate_user!

  def ro_home
  end

  def new
    @repair_order = RepairOrder.new
  end

  def create
    @repair_order = RepairOrder.new
  end


  private

  def ro_params
    params.require(:repair_order).permit(:VIN, :year, :make, :model, :trim,
                                         :miles, :color, :window_tag,
                                         :due_date, :update_time)
  end
end

=begin
RO Values
VIN
Year
Make
Model
Trim
Miles
Color
Window Tag
Lines 1..n
Due Date
Update Time

=end
