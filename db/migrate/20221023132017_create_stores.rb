class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :user_id
      t.integer :stock_take_id

      t.timestamps
    end
  end
end
