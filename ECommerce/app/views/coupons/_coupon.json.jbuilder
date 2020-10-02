json.extract! coupon, :id, :user_id, :coupon_type, :discount, :max_usage, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
