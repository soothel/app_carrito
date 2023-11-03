class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.integer :cart_id
      t.string :name
      t.string :lastname
      t.string :email
      t.string :address
      t.string :cellphone
      t.integer :deleted

      t.timestamps
    end
  end
end
