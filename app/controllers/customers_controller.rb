class CustomersController < ApplicationController

  before_action :authenticate_user!

  def home
  end

  def new
    @cusotmer = Customer.new
  end

  def create
    @customer = Customer.new(cust_params)
    @customer.save
    redirect_to customers_path
  end

  def show
    @customers = Customer.all
  end

  def index
    @customers = Customer.all
  end

  private

  def cust_params
    params.require(:customer).permit(:first_name, :last_name, :street, :city,
                                     :state, :zip, :phone_number1, :phone_number2,
                                     :email, :email2)
  end
end


