class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :product_id, :product_quantity, :buying_price, :payment_status
end
