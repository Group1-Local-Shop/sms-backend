class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :image
      t.integer :stores_id
      t.integer :product_id
      t.integer :product_quantity
      t.integer :sales
      t.string :address

      t.timestamps
    end
  end
end
