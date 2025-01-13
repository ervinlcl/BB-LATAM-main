class AddSubcatIdToSubcategories < ActiveRecord::Migration[5.1]
  def change
    add_column :subcategories, :subcat_id, :integer
  end
end
