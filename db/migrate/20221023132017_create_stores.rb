class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :merchant_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
