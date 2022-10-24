class AddJtiToMerchant < ActiveRecord::Migration[7.0]
  def change
    add_column :merchants, :jti, :string, null: false
    add_index :merchants, :jti, unique: true
  end
end
