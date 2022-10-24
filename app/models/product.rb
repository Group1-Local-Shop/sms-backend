class Product < ApplicationRecord
   belongs_to :user
   has_many :supply_request
end
