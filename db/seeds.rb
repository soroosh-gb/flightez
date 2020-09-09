# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Flight.destroy_all
Booking.destroy_all

puts "Seeding now..."

erik = User.create(name: "Erik", email_address: "erik@email.com")
soroosh = User.create(name: "Soroosh", email_address: "soroosh@email.com")
joe = User.create(name: "Joe", email_address: "joek@email.com")

20.times do 
Flight.create(flight_number: Faker::Number.hexadecimal(digits: 6), datetime: Faker::Time.forward(days: 150, period: :evening, format: :long), departure: Faker::Nation.capital_city, destination: Faker::Nation.capital_city, price: rand(100..400), seats: rand(1..100))
end

# seeding some Bookings to test AR relationships
10.times do
Booking.create(user_id: User.all.sample.id, flight_id: Flight.all.sample.id, seat_number: rand(1..100))
end

puts "Seeding complete!!!"