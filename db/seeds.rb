# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Azmi Super User",
  email: "azmi@a.com",
  password:              "123123",
  password_confirmation: "123123",
  admin: true)

5.times do |n|
name  = "User #{n+1}"
email = "user#{n+1}@a.com"
password = "111111"
User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password)
end