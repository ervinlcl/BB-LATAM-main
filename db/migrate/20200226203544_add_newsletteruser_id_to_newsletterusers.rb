class AddNewsletteruserIdToNewsletterusers < ActiveRecord::Migration[5.1]
  def change
    add_column :newsletterusers, :newsletteruser_id, :integer
  end
end
