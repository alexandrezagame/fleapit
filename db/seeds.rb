# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all

puts "creating users"
felix = User.create!(email: 'godmode@god.gg', username: 'God', password: 'travelworms')
felix.save!
alex = User.create!(email: 'alex@gmail.com', username: 'Alex', password: 'travelworms')
alex.save!
nina = User.create!(email: 'nina@gmail.com', username: 'Nina', password: 'travelworms')
nina.save!
daniel = User.create!(email: 'daniel@gmail.com', username: 'Daniel', password: 'travelworms')
daniel.save!
guest = User.create!(email: 'guest@gmail.com', username: 'Guest', password: 'travelworms')
guest.save!


puts "creating items"
pants = Item.create!(name: 'Pants', brand: 'Prada', description: 'Bought these on a market in Bangkok and paid alot of money, they are not fake the guy said.', user: felix)
pants.save!
tshirt = Item.create!(name: 'T-Shirt', brand: 'H&M', description: 'Just take it..', user: alex)
tshirt.save!
jacket = Item.create!(name: 'Jacket', brand: 'Gucci', description: 'Vintage gucci from fall season 1995.', user: nina)
jacket.save!
shoes = Item.create!(name: 'Shoe', brand: 'Louboutin', description: 'Worn three times, no damages!', user: felix)
shoes.save!
