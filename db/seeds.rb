# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
# User.create(name: 'Jane Smith', email: 'jane@example.com', password: 'password')


# Deposit.create(location: 'Location 1', capacity: 100)
# Deposit.create(location: 'Location 2', capacity: 200)
# Deposit.create(location: 'Location 3', capacity: 300)

# Reward.create(name: 'Discount coupon', points_required: 50)
# Reward.create(name: 'Gift card', points_required: 100)


# Jackpot.create(amount: 1000)

# Booking.create(user_id: 1, deposit_id: 1, date: Date.today)
# Booking.create(user_id: 2, deposit_id: 2, date: Date.today + 1)

# Users
User.create(email: 'john@example.com', password: 'password', first_name: 'John', last_name: 'Doe')
User.create(email: 'jane@example.com', password: 'password', first_name: 'Jane', last_name: 'Smith')

# Deposits
Deposit.create(name: 'Deposit 1', address: '25 avenue de Suffren, Paris', total_capacity: 100, remaining_capacity: 0, status: 0, rating: 4.5,)
Deposit.create(name: 'Deposit 2', address: '4 place Joffre, Paris', total_capacity: 200, remaining_capacity: 200, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 3', address: '30 avenue Bosquet, Paris', total_capacity: 150, remaining_capacity: 75, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 4', address: '15 avenue de la Bourdonnais, Paris', total_capacity: 350, remaining_capacity: 200, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 5', address: '25 boulevard Pereire, Paris', total_capacity: 100, remaining_capacity: 75, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 6', address: '31 rue Alsace, Levallois-Perret', total_capacity: 200, remaining_capacity: 180, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 7', address: '20 rue Garibaldi, Lyon', total_capacity: 150, remaining_capacity: 120, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 8', address: '4 rue Dr Bouchut, Lyon', total_capacity: 100, remaining_capacity: 90, status: 1, rating: 3.8,)
Deposit.create(name: 'Deposit 9', address: '70 cour Gambetta, Lyon', total_capacity: 75, remaining_capacity: 120, status: 1, rating: 3.8,)

# Jackpots
Jackpot.create(value: 1000, end_date: Date.today + 7, user_id: 1)
Jackpot.create(value: 500, end_date: Date.today + 14, user_id: 2)

# Reviews
Review.create(rating: 4, comment: 'Great deposit!', deposit_id: 1, user_id: 1)
Review.create(rating: 3, comment: 'Average deposit.', deposit_id: 2, user_id: 2)

# Bookings
Booking.create(number_of_bottles: 10, status: 1, start_date: Date.today, end_date: Date.today + 7, user_id: 1, deposit_id: 1)
Booking.create(number_of_bottles: 5, status: 1, start_date: Date.today + 1, end_date: Date.today + 8, user_id: 2, deposit_id: 2)
