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

Customer.create(firstName: 'Steve', lastName: 'Name', email: 'cust@hotmail.com', phone: "111-111-1111", city: 'Vancouver')
Customer.create(firstName: 'John', lastName: 'Roberts', email: 'cust@gmail.com', phone: "222-222-2222", city: 'Montreal')
Customer.create(firstName: 'Bob', lastName: 'Gee', email: 'cust@yahoo.com', phone: "333-333-3333", city: 'Calgary')
Customer.create(firstName: 'Rob', lastName: 'Jones', email: 'cust@google.com', phone: "444-444-4444", city: 'New York')

CustItem.create(make: "Kona", model: "Process", color: "Red", size: "MD", customer_id: 1)
CustItem.create(make: "Trek", model: "Marlin", color: "Blue", size: "MD", customer_id: 1)
CustItem.create(make: "Santa Cruz", model: "Nomad", color: "Red", size: "LG", customer_id: 2)
CustItem.create(make: "Specialized", model: "Enduro", color: "Black", size: "XL", customer_id: 2)

# Workorder.create(user_id: 1, cust_item_id: 1, customer_id: 1 )
