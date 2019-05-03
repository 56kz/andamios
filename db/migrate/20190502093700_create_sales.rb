class CreateSales < ActiveRecord::Migration[4.2]
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
