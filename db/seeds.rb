# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all

Car.create(name: "Prius", brand: "Toyota", year: 2010)
Car.create(name: "S220", brand: "Mercedes", year: 2014)
Car.create(name: "320", brand: "BMW", year: 2016)
