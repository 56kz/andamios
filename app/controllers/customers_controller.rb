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

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customers_path, notice: "La información del cliente ha sido actualizada"
    else
      render :edit
    end
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy

    redirect_to customers_path, notice: "El cliente fue eliminado con éxito"
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :company, :email, :phone, :sector_id)
    end

end
