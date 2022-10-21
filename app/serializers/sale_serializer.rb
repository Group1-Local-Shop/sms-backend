class SaleSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :selling_price, :product_quantity
end
