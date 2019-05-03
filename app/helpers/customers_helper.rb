module CustomersHelper
  def form_title
    @customer.new_record? ? "Registrar Cliente" : "Actualizar cliente"
  end
end
