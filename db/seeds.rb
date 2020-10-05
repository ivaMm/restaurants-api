# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

User.destroy_all

users = ["Alexis", "Ilona", "Patrik", "Ryan", "Jadwiga", "Toni", "Assunta", "Wiebke"]

users.each do |user|
  User.create(email: "#{user}@gmail.com", password: "123456")
end

my_users = User.all

my_users.each do |user|
  Restaurant.create(user_id: user.id, name: Faker::Name.first_name, address: Faker::Address.street_address)
end

p "Done :)"
