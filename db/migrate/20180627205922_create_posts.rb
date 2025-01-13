class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :company_name
      t.string :company_description
      t.integer :category_id
      t.integer :subcategory_id
      t.string :facebook_link
      t.string :instagram_link
      t.string :twitter_link
      t.string :website

      t.timestamps
    end
  end
end
