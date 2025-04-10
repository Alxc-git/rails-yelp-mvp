# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

category = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  name = Faker::Name.name
  address = "#{Faker::Address.street_address}, #{Faker::Address.zip_code} #{Faker::Address.city}"
  phone_number = "#{Faker::PhoneNumber.phone_number}"
  random_category = category.sample

  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: random_category)
  restaurant.save
end
