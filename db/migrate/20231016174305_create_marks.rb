class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.string :name
      t.text :image
      t.integer :deleted

      t.timestamps
    end
  end
end
