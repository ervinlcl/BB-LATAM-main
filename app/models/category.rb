class Category < ApplicationRecord
	self.primary_key = "id"




	before_create :check_max_value

	def check_max_value

		if Category.last != nil
		  self.id = Category.last.id + 1
		  self.cat_id = Category.last.id + 1
		else
		  self.id = 1
		  self.cat_id = 1
		end

	end

end
