json.extract! customer, :id, :firstName, :lastName, :email, :phone, :address, :city, :province, :country, :postal, :created_at, :updated_at
json.url customer_url(customer, format: :json)
