class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, notice: "El cliente fue creado con éxito"
    else
      render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :company, :email, :phone)
    end
end
