class AddLinkedinTwitterInstagramFacebookToColumnists < ActiveRecord::Migration[5.1]
  def change
    add_column :columnists, :facebook, :string
    add_column :columnists, :twitter, :string
    add_column :columnists, :linkedin, :string
    add_column :columnists, :instagram, :string
  end
end
