class CreateTypePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :type_payments do |t|
      t.string :name
      t.integer :deleted

      t.timestamps
    end
  end
end
