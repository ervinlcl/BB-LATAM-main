class Newsletteruser < ApplicationRecord
	self.primary_key = "id"

	before_create :check_max_value

def check_max_value

	if Newsletteruser.last != nil

		self.id = Newsletteruser.last.id.to_i + 1
  		self.newsletteruser_id = Newsletteruser.last.id.to_i + 1
	else

		self.id = 1
  		self.newsletteruser_id = 1
	end

  
end



end
