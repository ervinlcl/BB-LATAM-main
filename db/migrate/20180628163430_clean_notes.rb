class CleanNotes < ActiveRecord::Migration[5.1]
  def change
  	remove_column :posts, :website
  	remove_column :posts, :facebook_link
  	remove_column :posts, :instagram_link
  	remove_column :posts, :twitter_link
  end
end
