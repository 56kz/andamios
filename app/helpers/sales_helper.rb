module SalesHelper
  def form_title
    @sale.new_record? ? "Registrar Venta" : "Actualizar Venta"
  end
end
