class CreateCustomers < ActiveRecord::Migration[4.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
