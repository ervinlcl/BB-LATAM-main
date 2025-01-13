class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :descripcion
      t.string :address
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :twitter

      t.timestamps
    end
  end
end
