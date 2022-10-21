class StockTakeSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :quantity_damaged, :checked_in, :checked_out
end
