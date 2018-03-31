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
  end

  def show
    @customers.find(params[:id])
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

=begin
t.string "first_name"
t.string "last_name"
t.string "street"
t.string "city"
t.string "state"
t.integer "zip"
t.integer "phone_number1"
t.integer "phone_number2"
t.string "email"
t.string "email2"
=end
