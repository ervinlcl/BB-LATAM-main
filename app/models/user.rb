class User < ApplicationRecord
	has_secure_password
	self.primary_key = "id"
end
