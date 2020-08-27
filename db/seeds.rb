# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB!"
Booking.destroy_all
Request.destroy_all
User.destroy_all


puts "Creating users"
user1 = User.create!(email: 'm@me.com', password: '123456', first_name: 'Martin', last_name: 'Darras', artist: true, style: 'Gothic', price: 100, address: 'SE17 2TE, London', bio: "I am good at tattooing", instagram: 'Aslan4Days', nickname: "Mystix")
user2 = User.create!(email: 'd@me.com', password: '123456', first_name: 'Declan', last_name: 'Dec', artist: false)
user3 = User.create!(email: 'f@me.com', password: '123456', first_name: 'Fabrice', last_name: 'Aslan', artist: true, style: 'Angelic', price: 80, address: 'SE17 1RL, London', bio: "I am bad at tattooing", instagram: 'JoeyIsANipz', nickname: "Classio")
user4 = User.create!(email: 'g@me.com', password: '123456', first_name: 'Michel', last_name: 'Leroy', artist: true, style: 'Minimalist', price: 70, address: 'SE17 2NA, London', bio: "Minimalist style for great render", instagram: '4Frodo', nickname: "Mowgli")
user5 = User.create!(email: 'h@me.com', password: '123456', first_name: 'Joe', last_name: 'Exotic', artist: true, style: 'Japanese', price: 70, address: 'SE17 1JL, London', bio: "Really good japanese style", instagram: 'YouShallNotPass!', nickname: "Kingz")

puts "creating requests"
Request.create!(name: 'Jeff', location: 'france, Paris', body_part: 'arm', size: '10 inches', style: 'japanese', description: 'i would like it to b epic', user: user1)
Request.create!(name: 'Aslan', location: 'Uruguay', body_part: 'leg', size: '12 inches', style: 'gothic', description: 'i would like it to look like a barcode', user: user1)
Request.create!(name: 'Joesephineepoo', location: 'Narnia', body_part: 'shoulder', size: '1 inches', style: 'Narnian', description: 'i lost a dare', user: user1)
Request.create!(name: 'The Dude', location: 'London', body_part: 'chest', size: 'whole body', style: 'geometric', description: 'i am the dude, this means i will become one with tattoo', user: user1)

puts "creating bookings"
Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, location: 'SE17 2NF, London', request: Request.first, user: user1 )
Booking.create!(date: DateTime.new(2001,2,3,4,5,6), price: 600, location: 'SE5 0ED, London', request: Request.last, user: user1 )
puts "Finished!"




