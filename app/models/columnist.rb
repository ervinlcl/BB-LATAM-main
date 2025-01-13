class Columnist < ApplicationRecord



has_attached_file :picture
validates_attachment_presence :picture
validates_attachment_size :picture, :less_than => 100.megabytes
validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
before_create :check_max_value


validates_uniqueness_of :full_name

  has_many :posts
  self.primary_key = "id"

  def check_max_value
  	if Columnist.last != nil

  	    self.id = Columnist.last.id + 1
        self.colm_id = Columnist.last.id + 1

	else
		self.id = 1
        self.colm_id = 1

	end

  end


end
