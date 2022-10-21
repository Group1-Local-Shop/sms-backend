class CreateStockTakes < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_takes do |t|
      t.integer :product_id
      t.integer :quantity_damaged
      t.integer :checked_in
      t.integer :checked_out

      t.timestamps
    end
  end
end
