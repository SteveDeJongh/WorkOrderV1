json.extract! service, :id, :name, :sku, :price, :duration, :created_at, :updated_at
json.url service_url(service, format: :json)
