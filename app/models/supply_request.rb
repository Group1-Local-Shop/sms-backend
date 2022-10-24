class SupplyRequest < ApplicationRecord
    belongs_to :clerk 
    belongs_to :admin 
    belongs_to :product
end
