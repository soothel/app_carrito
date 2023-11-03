class CreateSliders < ActiveRecord::Migration[7.0]
  def change
    create_table :sliders do |t|
      t.string :name
      t.text :image
      t.text :image_mobile
      t.integer :remark
      t.integer :deleted

      t.timestamps
    end
  end
end
