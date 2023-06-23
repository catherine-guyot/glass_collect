# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Deposit.destroy_all
deposit1 = Deposit.create(id: 2, name: "Big_cat", address: "36 Rue de la Madeleine, 69007 Lyon", total_capacity: 9, remaining_capacity: 5, status: 2, rating: 4, longitude: 2.287592, latitude: 48.862725)
