class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :date_payment
      t.integer :quote_id
      t.float :amount
      t.integer :type_payment_id
      t.integer :deleted

      t.timestamps
    end
  end
end
