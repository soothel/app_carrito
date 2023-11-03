class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :short_name
      t.string :address
      t.integer :deleted

      t.timestamps
    end
  end
end
