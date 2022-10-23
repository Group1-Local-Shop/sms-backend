class CreateSupplyRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :supply_requests do |t|
      t.integer :status_type

      t.timestamps
    end
  end
end
