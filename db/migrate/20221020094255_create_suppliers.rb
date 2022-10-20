class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :product_quantity
      t.integer :buying_price
      t.boolean :payment_status

      t.timestamps
    end
  end
end
