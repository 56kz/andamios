class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to sales_path, notice: "Se ha creado la venta con éxito"
    else
      render :new
    end
  end

  def show
    @sale = sale.find(params[:id])
  end

  def edit
    @sale = sale.find(params[:id])
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update(sale_params)
      redirect_to sales_path, notice: "Has actualizado la venta con éxito"
    else
      render :edit
    end
  end

  def destroy
    sale = Sale.find(params[:id])
    sale.destroy

    redirect_to sales_path, notice: "Has eliminado la venta satisfactoriamente"
  end

  private
   def sale_params
     params.require(:sale).permit(:date, :quantity, :product_id, :customer_id)
   end

end
