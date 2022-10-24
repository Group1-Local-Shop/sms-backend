class CreateSupplyRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :supply_requests do |t|
      t.integer :product_id
      t.integer :product_quantity
      t.integer :buying_price

      t.timestamps
    end
  end
end
