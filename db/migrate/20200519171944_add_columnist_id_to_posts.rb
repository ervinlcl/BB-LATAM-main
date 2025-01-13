class AddColumnistIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :columnist_id, :integer
  end
end
