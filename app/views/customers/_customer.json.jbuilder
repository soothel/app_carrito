json.extract! customer, :id, :country_id, :num_doc, :name, :deleted, :created_at, :updated_at
json.url customer_url(customer, format: :json)
