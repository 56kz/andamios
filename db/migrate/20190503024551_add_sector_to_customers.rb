class AddSectorToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :sector, foreign_key: true
  end
end
