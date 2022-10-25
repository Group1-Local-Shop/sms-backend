class Product < ApplicationRecord
     belongs_to :user
   has_many :supply_request

   
   def stock_array
      @stock_array = []
      @stock_array << self
    end
end
