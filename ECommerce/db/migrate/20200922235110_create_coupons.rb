class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.references :user, foreign_key: true
      t.integer :coupon_type
      t.float :discount
      t.integer :max_usage

      t.timestamps
    end
  end
end
