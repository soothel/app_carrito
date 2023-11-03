class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :mark_id
      t.string :name
      t.text :description
      t.text :image
      t.float :list_price
      t.float :discount
      t.float :price
      t.integer :ranked
      t.integer :stock
      t.text :technical_info
      t.text :attach
      t.integer :deleted

      t.timestamps
    end
  end
end
