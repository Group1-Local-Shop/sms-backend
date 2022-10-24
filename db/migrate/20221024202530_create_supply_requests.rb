class CreateSupplyRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :supply_requests do |t|
      t.integer :product_id 
      t.integer :admin_id
      t.integer :clerk_id
      t.string :request_status

      t.timestamps
    end
  end
end
