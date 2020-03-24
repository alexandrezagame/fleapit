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
felix = User.create!(email: 'godmode@god.gg', password: 'travelworms')
felix.save!
alex = User.create!(email: 'alex@gmail.com', password: 'travelworms')
alex.save!
nina = User.create!(email: 'nina@gmail.com', password: 'travelworms')
nina.save!
daniel = User.create!(email: 'daniel@gmail.com', password: 'travelworms')
daniel.save!
guest = User.create!(email: 'guest@gmail.com', password: 'travelworms')
guest.save!


puts "creating items"
pants = Item.create!(name: 'Pants', description: 'Nice Pants', user: felix)
pants.save!
tshirt = Item.create!(name: 'T-Shirt', description: 'Ugly T-Shirt', user: alex)
tshirt.save!
jacket = Item.create!(name: 'Jacket', description: 'Gucci Jacket', user: nina)
jacket.save!
shoes = Item.create!(name: 'Shoe', description: 'Prada Shoes', user: felix)
shoes.save!
