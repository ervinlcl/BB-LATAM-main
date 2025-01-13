class CreateColumnists < ActiveRecord::Migration[5.1]
  def change
    create_table :columnists do |t|
      t.string :full_name
      t.string :socials
      t.string :semblanza

      t.timestamps
    end
  end
end
