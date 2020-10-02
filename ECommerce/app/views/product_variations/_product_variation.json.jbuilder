json.extract! product_variation, :id, :product_id, :variation_id, :stock, :created_at, :updated_at
json.url product_variation_url(product_variation, format: :json)
