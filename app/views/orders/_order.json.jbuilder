json.extract! order, :id, :status, :amount, :created_at, :updated_at
json.url order_url(order, format: :json)
