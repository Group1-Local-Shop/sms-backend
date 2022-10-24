class ProductSerializer < ActiveModel::Serializer

  attributes :id, :payment_status, :no_of_received_item, :no_of_product_in_stock, :buying_price, :selling_price, :no_of_spoiled_item

end
