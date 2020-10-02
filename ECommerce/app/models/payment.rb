class Payment < ApplicationRecord
  belongs_to :payment_method
  belongs_to :order
  belongs_to :coupon
end
