class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
       t.string :payment_status
      t.integer :no_of_received_item
      t.integer :no_of_product_in_stock
      t.integer :buying_price
      t.integer :selling_price
      t.string :no_of_spoiled_item

      t.timestamps
    end
  end
end
