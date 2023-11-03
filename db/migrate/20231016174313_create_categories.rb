class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :image
      t.text :slider
      t.text :slider_mobile
      t.integer :deleted

      t.timestamps
    end
  end
end
