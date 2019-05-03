class AddCustomerToSales < ActiveRecord::Migration[5.1]
  def change
    add_reference :sales, :customer, foreign_key: true
  end
end
