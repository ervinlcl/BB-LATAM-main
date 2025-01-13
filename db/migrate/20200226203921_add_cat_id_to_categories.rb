class AddCatIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :cat_id, :integer
  end
end
