json.extract! product, :id, :category_id, :mark_id, :name, :description, :image, :list_price, :discount, :price, :ranked, :stock, :technical_info, :attach, :deleted, :created_at, :updated_at
json.url product_url(product, format: :json)
