class Company < ApplicationRecord

has_attached_file :logo
validates_attachment_presence :logo
validates_attachment_size :logo, :less_than => 100.megabytes
validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

validates_uniqueness_of :name


self.primary_key = "id"
before_create :check_max_value

def check_max_value
	if Company.last != nil

		self.id = Company.last.id + 1
  		self.comp_id = Company.last.id + 1

	else

		self.id = 1
  		self.comp_id = 1
	end


  
end

end
