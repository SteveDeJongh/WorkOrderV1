# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

User.create(email: 'test@case.com', password: 'password', password_confirmation: 'password', name: 'Test Name')
User.create(email: 'John@doe.com', password: 'password', password_confirmation: 'password', name: 'John Doe')

Customer.create(firstName: 'Steve', lastName: 'Maestro', email: 'cust@hotmail.com', phone: "111-111-1111", city: 'Vancouver')
Customer.create(firstName: 'John', lastName: 'Roberts', email: 'cust@gmail.com', phone: "222-222-2222", city: 'Montreal')
Customer.create(firstName: 'Bob', lastName: 'Gee', email: 'cust@yahoo.com', phone: "333-333-3333", city: 'Calgary')
Customer.create(firstName: 'Rob', lastName: 'Jones', email: 'cust@google.com', phone: "444-444-4444", city: 'New York')

CustItem.create(make: "Kona", model: "Process", color: "Red", size: "MD", customer_id: 1)
CustItem.create(make: "Trek", model: "Marlin", color: "Blue", size: "MD", customer_id: 1)
CustItem.create(make: "Santa Cruz", model: "Nomad", color: "Red", size: "LG", customer_id: 2)
CustItem.create(make: "Specialized", model: "Enduro", color: "Black", size: "XL", customer_id: 2)
CustItem.create(make: "Trek", model: "Madone", color: "Black", size: "52", customer_id: 3)
CustItem.create(make: "Giant", model: "Talon", color: "Orange", size: "SM", customer_id: 3)
CustItem.create(make: "Salsa", model: "Cutthroat", color: "Black", size: "MD", customer_id: 4)

# Workorder.create(user_id: 1, cust_item_id: 1, customer_id: 1 )
Workorder.create(status: 'Open', user_id: 1, customer_id: 1, cust_item_id: 1)
Workorder.create(status: 'Awaiting Parts', user_id: 1, customer_id: 1, cust_item_id: 2)
Workorder.create(status: 'Invoiced', user_id: 1, customer_id: 2, cust_item_id: 3)
Workorder.create(status: 'Open', user_id: 1, customer_id: 2, cust_item_id: 4)
Workorder.create(status: 'Invoiced', user_id: 1, customer_id: 3, cust_item_id: 5)
Workorder.create(status: 'Awaiting Parts', user_id: 1, customer_id: 4, cust_item_id: 7)

5.times do |x|
  ['Bike', 'part', 'clothing', 'service', 'accessory'].each_with_index do |cat, idx|
    x = x + 10
    idx = idx + 10
    Product.create(name: (cat + x.to_s).capitalize,
                    sku: (cat.upcase + x.to_s).ljust(10, x.to_s),
                    upc: (x + idx).to_s.rjust(12,(x + idx).to_s),
                    price: x * idx,
                    cost: (idx + x) * 3,
                    stock: x * idx / 7,
                    inventory: true,
                    labour: (cat === "service"),
                    labourTime: (cat === "service" ? idx * x * 3: 0))
  end
end
