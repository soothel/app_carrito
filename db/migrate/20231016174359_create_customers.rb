class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :country_id
      t.string :num_doc
      t.string :name
      t.integer :deleted

      t.timestamps
    end
  end
end
