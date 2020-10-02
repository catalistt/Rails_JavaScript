json.extract! payment, :id, :payment_method_id, :order_id, :final_amount, :coupon_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
