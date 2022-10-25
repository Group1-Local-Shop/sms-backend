class Clerk < ApplicationRecord
     enum role: { clerk: 0 } 
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

end
