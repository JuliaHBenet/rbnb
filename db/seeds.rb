# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Pet.destroy_all
User.destroy_all
Registration.destroy_all

Registration.create(email: "pierre@gmail.com", password: "password")
Registration.create(email: "nico@gmail.com", password: "password")
Registration.create(email: "madi@gmail.com", password: "password")
Registration.create(email: "julia@gmail.com", password: "password")

User.create(first_name: "Pierre", last_name: "Bayen", registration: Registration.all.sample)
User.create(first_name: "Nico", last_name: "Jonckheere", registration: Registration.all.sample)
User.create(first_name: "Madi", last_name: "Latafi", registration: Registration.all.sample)
User.create(first_name: "Julia", last_name: "Benet", registration: Registration.all.sample)

Pet.create(name: "Jumpy", category: "Dog", daily_price: 10, user: User.all.sample)
Pet.create(name: "Laika", category: "Dog", daily_price: 20, user: User.all.sample)
Pet.create(name: "Babe", category: "Pig", daily_price: 15, user: User.all.sample)
Pet.create(name: "Simba", category: "Lion", daily_price: 50, user: User.all.sample)

# registrations = []

# 5.times do
#   registrations << Registration.new(email: Faker::Internet.email)

# end
