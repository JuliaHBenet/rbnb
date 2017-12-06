# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Pierre", last_name: "Bayen")
User.create(first_name: "Nico", last_name: "Jonckheere")
User.create(first_name: "Madi", last_name: "Latafi")
User.create(first_name: "Julia", last_name: "Benet")

Pet.create(name: "Jumpy", category: "Dog", daily_price: "10")
Pet.create(name: "Laika", category: "Dog", daily_price: "20")
Pet.create(name: "Babe", category: "Pig", daily_price: "15")
Pet.create(name: "Simba", category: "Lion", daily_price: "50")


