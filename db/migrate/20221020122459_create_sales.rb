class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :product_id
      t.integer :selling_price
      t.integer :product_quantity

      t.timestamps
    end
  end
end
