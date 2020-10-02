class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :payment_method, foreign_key: true
      t.references :order, foreign_key: true
      t.float :final_amount
      t.references :coupon, foreign_key: true

      t.timestamps
    end
  end
end
