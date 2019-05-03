class AddProductToSales < ActiveRecord::Migration[5.1]
  def change
    add_reference :sales, :product, foreign_key: true
  end
end
