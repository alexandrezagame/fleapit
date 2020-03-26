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


require "open-uri"

puts "creating items"
file1 = URI.open('https://cdn11.bigcommerce.com/s-qb5zncdqc6/images/stencil/2048x2048/products/5840/11417/womenssimplepantsblack__49371.1578586139.jpg?c=2')
pants = Item.new(name: 'Pants', brand: 'Prada', description: 'Bought these on a market in Bangkok and paid alot of money, they are not fake the guy said.', min_price: 250, max_price: 1000, user: felix)
pants.pictures.attach(io: file1, filename: 'pants.jpg', content_type: 'image/jpg')
pants.save!

file2 = URI.open('https://tres-bien.com/media/catalog/product/cache/4df57bf4c117b7e5982dee8955fd82cb/s/t/sterling-ruby_191205_035.jpg')
pants = Item.new(name: 'Pants', brand: 'Prada', description: 'Bought these on a market in Bangkok and paid alot of money, they are not fake the guy said.', min_price: 250, max_price: 1000, user: felix)
pants.pictures.attach(io: file2, filename: 'pants.jpg', content_type: 'image/jpg')
pants.save!


file3 = URI.open('https://cdn11.bigcommerce.com/s-rxzabllq/images/stencil/1280x1280/products/910/18045/Kids-Plain-Poly-Fit-Quick_Dry-Tshirt-red__13799.1567089094.jpg?c=2')
tshirt = Item.new(name: 'T-Shirt', brand: 'H&M', description: 'Just take it..', min_price: 250, max_price: 1000, user: alex)
tshirt.pictures.attach(io: file3, filename: 'tshirt.jpg', content_type: 'image/jpg')
tshirt.save!

file4 = URI.open('https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1547146139/product-image/2078M_11_d.jpg')
jacket = Item.new(name: 'Jacket', brand: 'Gucci', description: 'Vintage gucci from fall season 1995.', min_price: 250, max_price: 1000, user: nina)
jacket.pictures.attach(io: file4, filename: 'jacket.jpg', content_type: 'image/jpg')
jacket.save!

file5 = URI.open('https://s3.amazonaws.com/nikeinc/assets/84925/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_rectangle_1600.jpg?1547068102')
shoes = Item.new(name: 'Shoe', brand: 'Louboutin', description: 'Worn three times, no damages!', min_price: 250, max_price: 1000, user: felix)
shoes.pictures.attach(io: file5, filename: 'shoes.jpg', content_type: 'image/jpg')
shoes.save!

