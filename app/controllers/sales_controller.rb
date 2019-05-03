class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.verify_stock
      if @sale.save
        redirect_to sales_path, notice: "Se ha creado la venta con éxito"
      else
        render :new
      end
    else
      @sale.errors.add(:quantity, "No hay existencias suficientes")
      render :new, notice: "No hay esa cantidad en Stock"
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
