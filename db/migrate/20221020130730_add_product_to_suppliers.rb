class AddProductToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_reference :suppliers, :product, null: false, foreign_key: true
  end
end
