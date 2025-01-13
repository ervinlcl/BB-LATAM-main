class AddGiroToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :giro, :string
  end
end
