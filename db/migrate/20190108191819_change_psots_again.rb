class ChangePsotsAgain < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :post_id, :integer

  	execute "CREATE SEQUENCE posts_post_id_seq START 1"
  end
end
