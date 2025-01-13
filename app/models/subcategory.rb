class Subcategory < ApplicationRecord
	self.primary_key = "id"


	before_create :check_max_value

def check_max_value

	if Subcategory.last != nil

	    self.id = Subcategory.last.id + 1
	    self.subcat_id = Subcategory.last.id + 1


	else

		self.id = 1
    	self.subcat_id = 1

	end


end



end
