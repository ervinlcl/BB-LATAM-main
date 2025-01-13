class Changeposts < ActiveRecord::Migration[5.1]
  def change
      change_column :posts, :id, :int, null: false, unique: true, auto_increment: true
  end
end
