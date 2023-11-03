json.extract! sale, :id, :date_payment, :quote_id, :amount, :type_payment_id, :deleted, :created_at, :updated_at
json.url sale_url(sale, format: :json)
