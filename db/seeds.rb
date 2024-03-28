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

User.create(email: 'text@case.com', password: 'password', password_confrimation: 'password')

10.times do |x|
  Workorder.create(
    customer: 'Steve' + (x + 1).to_s,
    item: 'Kona' + (x + 1).to_s,
    status: 'Open',
    user_id: 1, )
end
