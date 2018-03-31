class CustomersController < ApplicationController

  before_action :authenticate_user!


  def home
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(cust_params)
    @customer.save
    flash[:notice] = "Customer Saved!"
    redirect_to customers_path(@customers)
  end

  def show
    @customers = Customer.last
  end

  def index
    @customers = Customer.all
  end

  def destroy
    @customer = Customer.find(params[:id])
    if @customer.present?
      @customer.destroy
    end
    redirect_to customers_path
  end

  def edit
    @customers = Customer.find(params[:id])
  end

  def update
    @customers = Customer.find(params[:id])
    if @customers.update(cust_params)
      flash[:success] = "Successfully updated customer"
      redirect_to customers_path
    else
      flash[:alert] = "Error updating customer"
      render :edit
    end
  end

  private

  def cust_params
    params.require(:customer).permit(:first_name, :last_name, :street, :city,
                                     :state, :zip, :phone_number1, :phone_number2,
                                     :email, :email2)
  end
end


