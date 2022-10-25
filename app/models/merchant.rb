class Merchant < ApplicationRecord
     enum role: { merchant: 0 } 
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
