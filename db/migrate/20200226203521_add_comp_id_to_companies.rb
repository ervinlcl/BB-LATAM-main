class AddCompIdToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :comp_id, :integer
  end
end
