class AddColmIdToColumnists < ActiveRecord::Migration[5.1]
  def change
    add_column :columnists, :colm_id, :integer
  end
end
