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

# User.destroy_all


# Booking.create(user_id: 1, deposit_id: 1, date: Date.today)
# Booking.create(user_id: 2, deposit_id: 2, date: Date.today + 1)

Deposit.destroy_all

# Users
# User.create(email: 'john@example.com', password: 'password', first_name: 'John', last_name: 'Doe')
# User.create(email: 'jane@example.com', password: 'password', first_name: 'Jane', last_name: 'Smith')

# # Deposits
Deposit.create(name: 'Deposit Suffren', address: '25 avenue de Suffren, Paris', total_capacity: 50, remaining_capacity: 0, status: 0)
Deposit.create(name: 'Deposit Joffre', address: '4 place Joffre, Paris', total_capacity: 50, remaining_capacity: 40, status: 1)
Deposit.create(name: 'Deposit Bosquet', address: '30 avenue Bosquet, Paris', total_capacity: 50, remaining_capacity: 50, status: 1)
Deposit.create(name: 'Deposit Bourdon', address: '15 avenue de la Bourdonnais, Paris', total_capacity: 50, remaining_capacity: 36, status: 1,)
Deposit.create(name: 'Deposit Pereire', address: '25 boulevard Pereire, Paris', total_capacity: 40, remaining_capacity: 40, status: 1,)
Deposit.create(name: 'Deposit Alsace', address: '31 rue Alsace, Levallois-Perret', total_capacity: 50, remaining_capacity: 30, status: 1,)
Deposit.create(name: 'Deposit Garibal', address: '150 rue Garibaldi, Lyon', total_capacity: 50, remaining_capacity: 30, status: 1,)
Deposit.create(name: 'Deposit Bouchut', address: '8 rue Dr Bouchut, Lyon', total_capacity: 50, remaining_capacity: 50, status: 1, )
Deposit.create(name: 'Deposit Servient', address: '80 rue Servient, Lyon', total_capacity: 50, remaining_capacity: 28, status: 1, )
Deposit.create(name: 'Deposit Peri', address: '37 rue Gabriel Péri, 92300 Levallois Perret', total_capacity: 75, remaining_capacity: 30, status: 1,)
Deposit.create(name: 'Deposit Louise M', address: '77 rue Louise Michel, 92300 Levallois Perret', total_capacity: 75, remaining_capacity: 75, status: 1, )
Deposit.create(name: 'Deposit Wilson', address: '70 r Prés Wilson, 92300 Levallois Perret', total_capacity: 75, remaining_capacity: 50, status: 1, )
Deposit.create(name: 'Deposit Liberté', address: '250 rue de la Liberté, Lille', total_capacity: 50, remaining_capacity: 50, status: 1,)
Deposit.create(name: 'Deposit Temple', address: '4 place du Temple, Lille', total_capacity: 50, remaining_capacity: 40, status: 1,)
Deposit.create(name: 'Deposit Sauveur', address: '51 rue Saint-Sauveur, Lille', total_capacity: 50, remaining_capacity: 50, status: 1,)
Deposit.create(name: 'Deposit Cardinet', address: '158 rue Cardinet, Paris', total_capacity: 50, remaining_capacity: 50, status: 1,)
Deposit.create(name: 'Deposit Moine', address: '47 rue des Moines, Paris', total_capacity: 50, remaining_capacity: 30, status: 1,)
Deposit.create(name: 'Deposit Legendre', address: '90 rue Legendre, Paris', total_capacity: 50, remaining_capacity: 40, status: 1,)
