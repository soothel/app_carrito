json.extract! cart, :id, :deleted, :created_at, :updated_at
json.url cart_url(cart, format: :json)
