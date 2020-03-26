# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all

puts "creating users"

felix_image = URI.open('https://ca.slack-edge.com/T02NE0241-UT45X0WAX-59f8a63171b0-512')
felix = User.create!(email: 'godmode@god.gg', username: 'God', password: '123456', location: 'Stockholm')
felix.avatar.attach(io: felix_image, filename: 'felix.jpg', content_type: 'image/jpg')
felix.save!

alex_image = URI.open('https://ca.slack-edge.com/T02NE0241-UT467HFK5-f6b66015ea82-512')
alex = User.create!(email: 'alex@gmail.com', username: 'Alex', password: '123456', location: 'Stockholm')
alex.avatar.attach(io: alex_image, filename: 'alex.jpg', content_type: 'image/jpg')
alex.save!

nina_image = URI.open('https://ca.slack-edge.com/T02NE0241-UTFN259RB-fe0464c116f3-512')
nina = User.create!(email: 'nina@gmail.com', username: 'Nina', password: '123456', location: 'Stockholm')
nina.avatar.attach(io: nina_image, filename: 'nina.jpg', content_type: 'image/jpg')
nina.save!


daniel_image = URI.open('https://ca.slack-edge.com/T02NE0241-UTHJ33JTZ-40af3f73854a-512')
daniel = User.create!(email: 'daniel@gmail.com', username: 'Daniel', password: '123456', location: 'Stockholm')
daniel.avatar.attach(io: daniel_image, filename: 'daniel.jpg', content_type: 'image/jpg')
daniel.save!








# madeleine = User.create!(email: 'madeleine@gmail.com', username: 'Madeleine', password: '123456')
# madeleine.save!
# sander = User.create!(email: 'sander@gmail.com', username: 'Sander', password: '123456')
# sander.save!
# george = User.create!(email: 'george@gmail.com', username: 'George', password: '123456')
# george.save!
# raphaelle = User.create!(email: 'raphaelle@gmail.com', username: 'Raphaelle', password: '123456')
# raphaelle.save!
# yves = User.create!(email: 'yves@gmail.com', username: 'Yves', password: '123456')
# yves.save!
# claire = User.create!(email: 'claire@gmail.com', username: 'Claire', password: '123456')
# claire.save!
# valerie = User.create!(email: 'valerie@gmail.com', username: 'Valerie', password: '123456')
# valerie.save!


require "open-uri"
puts "creating items"

file1 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/ginny-dress/ivory/5e28fd83b280f9001a7fdec9/original.jpg')
file2 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/ginny-dress/ivory/5e28fd85b280f9001a7fdecb/original.jpg')
file3 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/ginny-dress/ivory/5e28fd8ab280f9001a7fdecf/original.jpg')
dress = Item.new(name: 'dress', brand: 'Reformation', description: 'The best dress in the world.', min_price: 250, max_price: 1000, user: nina)
dress.pictures.attach(io: file1, filename: 'dress.jpg', content_type: 'image/jpg')
dress.pictures.attach(io: file2, filename: 'dress.jpg', content_type: 'image/jpg')
dress.pictures.attach(io: file3, filename: 'dress.jpg', content_type: 'image/jpg')
dress.save!

file4 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/cindy-bootleg-jean/erie/5d7c1fba9dd3aa13a20c386a/original.jpg')
file5 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/cindy-bootleg-jean/erie/5d7c1fb79dd3aa13a20c3867/original.jpg')
file6 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_2560_9_20:520/v1/prod/product_images/cindy-bootleg-jean/erie/5d7c1fb89dd3aa13a20c3868/original.jpg')
jeans = Item.new(name: 'jeans', brand: 'Reformation', description: 'Nice legs. This is a high rise, full length jean with a straight leg and a finished hem. The Cindy Bootleg is fitted throughout.', min_price: 250, max_price: 1000, user: nina)
jeans.pictures.attach(io: file4, filename: 'jeans.jpg', content_type: 'image/jpg')
jeans.pictures.attach(io: file5, filename: 'jeans.jpg', content_type: 'image/jpg')
jeans.pictures.attach(io: file6, filename: 'jeans.jpg', content_type: 'image/jpg')
jeans.save!

file7 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_1668_9_20:520/v1/prod/product_images/kenny-boiler-jumpsuit/stone/5dfd6eb6bc6ab6001a7567da/original.jpg')
file8 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_1668_9_20:520/v1/prod/product_images/kenny-boiler-jumpsuit/stone/5dfd6eb5bc6ab6001a7567d9/original.jpg')
file9 = URI.open('https://media.thereformation.com/image/upload/q_auto/c_scale,w_auto:breakpoints_100_1668_9_20:520/v1/prod/product_images/kenny-boiler-jumpsuit/stone/5dfd6eb2bc6ab6001a7567d7/original.jpg')
jumpsuit = Item.new(name: 'jumpsuit', brand: 'Reformation', description: 'As easy as it looks. This is a slightly cropped jumpsuit with a center front zipper, a collar and short sleeves. The Kenny is slim fitting throughout with a detached belt.', min_price: 250, max_price: 1000, user: nina)
jumpsuit.pictures.attach(io: file7, filename: 'jumpsuit.jpg', content_type: 'image/jpg')
jumpsuit.pictures.attach(io: file8, filename: 'jumpsuit.jpg', content_type: 'image/jpg')
jumpsuit.pictures.attach(io: file9, filename: 'jumpsuit.jpg', content_type: 'image/jpg')
jumpsuit.save!

file10 = URI.open('https://i8.amplience.net/i/nlyscandinavia/097038-3299_01/i-gale-jacket/?$productpage_slider_2x$')
file11 = URI.open('https://i8.amplience.net/i/nlyscandinavia/097038-3299_02/i-gale-jacket/?$productpage_slider_2x$')
file12 = URI.open('https://i8.amplience.net/i/nlyscandinavia/097038-3299_03/i-gale-jacket/?$productpage_slider_2x$')
jacket1 = Item.new(name: 'Jacket', brand: 'Wood Wood', description: 'Corduroy jacket from Wood Wood. Made of 100% Cotton. Zipper closure at front. Four front pockets, two with hidden zipper closure. Buttoned cuffs', min_price: 250, max_price: 1000, user: alex)
jacket1.pictures.attach(io: file10, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.pictures.attach(io: file11, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.pictures.attach(io: file12, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.save!

file13 = URI.open('https://i8.amplience.net/i/nlyscandinavia/900646-0162_21/i-old-skool/?$productpage_slider_2x$')
file14 = URI.open('https://i8.amplience.net/i/nlyscandinavia/900646-0162_22/i-old-skool/?$productpage_slider_2x$')
file15 = URI.open('https://i8.amplience.net/i/nlyscandinavia/900646-0162_20/i-old-skool/?$productpage_slider_2x$')
shoes1 = Item.new(name: 'Shoes', brand: 'Vans', description: '- Sneakers from VANS. Made of Fabric. Fabric interior. Rubber outsole. Rounded toe and laces at front. Suede portions', min_price: 250, max_price: 1000, user: alex)
shoes1.pictures.attach(io: file13, filename: 'shoes1.jpg', content_type: 'image/jpg')
shoes1.pictures.attach(io: file14, filename: 'shoes1.jpg', content_type: 'image/jpg')
shoes1.pictures.attach(io: file15, filename: 'shoes1.jpg', content_type: 'image/jpg')
shoes1.save!

file16 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/39361910_020_b?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
file17 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/39361910_020_b4?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
file18 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/39361910_020_b5?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
chair1 = Item.new(name: 'Linen Haverhill Chair', brand: 'Anthropologie', description: 'Reminiscent of Danish midcentury designs, this modern chair features a wide- set silhouette with tufted cushions upholstered in natural oatmeal linen. A true form-follows-function piece, tapered brass accents protect the gleaming legs while lending the piece a refined elegance.', min_price: 250, max_price: 1000, user: alex)
chair1.pictures.attach(io: file16, filename: 'chair1.jpg', content_type: 'image/jpg')
chair1.pictures.attach(io: file17, filename: 'chair1.jpg', content_type: 'image/jpg')
chair1.pictures.attach(io: file18, filename: 'chair1.jpg', content_type: 'image/jpg')
chair1.save!

file19 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/54748306_020_b2?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
file20 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/54748306_020_b3?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
file21 = URI.open('https://s7d5.scene7.com/is/image/Anthropologie/54748306_020_b4?$a15-pdp-detail-shot$&hei=900&qlt=80&fit=constrain')
table1 = Item.new(name: 'Shoes', brand: 'Wood Wood', description: 'Crafted with tapered legs, curved corners, and subtle hints of brushed brass, this Mid Century-inspired piece lends a touch of casual charm to dining rooms, breakfast nooks, and eat-in kitchens alike.', min_price: 250, max_price: 1000, user: felix)
table1.pictures.attach(io: file19, filename: 'table1.jpg', content_type: 'image/jpg')
table1.pictures.attach(io: file20, filename: 'table1.jpg', content_type: 'image/jpg')
table1.pictures.attach(io: file21, filename: 'table1.jpg', content_type: 'image/jpg')
table1.save!

file22 = URI.open('https://images.aceandtate.com/image/upload/c_scale,w_2000/c_crop,w_1200/c_scale,w_800/q_60/:spree/public/spree/products/5756/original/Benjamin-Midnight-front.jpg')
file23 = URI.open('https://images.aceandtate.com/image/upload/c_scale,w_2000/c_crop,w_1200/c_scale,w_800/q_60/:spree/public/spree/products/5754/original/Benjamin-Midnight-45.jpg')
file24 = URI.open('https://images.aceandtate.com/image/upload/c_scale,w_2000/c_crop,w_1200/c_scale,w_800/q_60/:spree/public/spree/products/5755/original/Benjamin-Midnight-profile.jpg')
sunglasses1 = Item.new(name: 'Sunglasses', brand: 'Ace and Tate', description: 'Rounded frame with keyhole bridge. Structurally crisp – a sharp new tradition. The Benjamin has character: approachable, educated, smart, offbeat..', min_price: 250, max_price: 1000, user: felix)
sunglasses1.pictures.attach(io: file22, filename: 'sunglasses1.jpg', content_type: 'image/jpg')
sunglasses1.pictures.attach(io: file23, filename: 'sunglasses1.jpg', content_type: 'image/jpg')
sunglasses1.pictures.attach(io: file24, filename: 'sunglasses1.jpg', content_type: 'image/jpg')
sunglasses1.save!

file25 = URI.open('https://n.nordstrommedia.com/id/sr3/3d95b212-5afb-4893-a246-1db2e4e39a09.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196')
file26 = URI.open('https://n.nordstrommedia.com/id/sr3/e0fa2185-d2cd-4f7c-b5bb-34c0224a318c.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196')
file27 = URI.open('https://n.nordstrommedia.com/id/sr3/482abfaa-b71a-4936-b649-b7e64ed25ffc.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196')
hat1 = Item.new(name: 'Hat', brand: 'Adidas', description: 'A classic brand logo fronts this stylish street cap built from durable cotton for lasting appeal.', min_price: 200, max_price: 300, user: felix)
hat1.pictures.attach(io: file25, filename: 'hat1.jpg', content_type: 'image/jpg')
hat1.pictures.attach(io: file26, filename: 'hat1.jpg', content_type: 'image/jpg')
hat1.pictures.attach(io: file27, filename: 'hat1.jpg', content_type: 'image/jpg')
hat1.save!


file28 = URI.open('https://douchebags.centracdn.net/client/dynamic/images/159_c7dbea8da4-the-backpack-black-full.jpg')
file29 = URI.open('https://douchebags.centracdn.net/client/dynamic/images/159_1b50214f02-backpack_black_01-full.jpg')
file30 = URI.open('https://douchebags.centracdn.net/client/dynamic/images/159_f97fd951a0-backpack_black_08-full.jpg')
backpack = Item.new(name: 'Backpack', brand: 'Douchebags', description: 'Your one stop shop, all in one, can’t be beaten backpack. Your ultimate friend whether you’re just going around the block or heading off for a dusk to dawn shoot.', min_price: 250, max_price: 1000, user: daniel)
backpack.pictures.attach(io: file28, filename: 'backpack.jpg', content_type: 'image/jpg')
backpack.pictures.attach(io: file29, filename: 'backpack.jpg', content_type: 'image/jpg')
backpack.pictures.attach(io: file30, filename: 'backpack.jpg', content_type: 'image/jpg')
backpack.save!

file31 = URI.open('https://www.gap.com/webcontent/0016/127/451/cn16127451.jpg')
file32 = URI.open('https://www.gap.com/webcontent/0016/127/481/cn16127481.jpg')
file33 = URI.open('https://www.gap.com/webcontent/0016/127/489/cn16127489.jpg')
jeans1 = Item.new(name: 'Jeans', brand: 'Gap', description: 'High stretch. Low maintenance. Super cool. Our skinniest pair is designed to move wherever you do. This is authentic denim. Made to last. Made so you can be you. And weve been at it for almost 50 years.', min_price: 250, max_price: 1000, user: daniel)
jeans1.pictures.attach(io: file31, filename: 'jeans1.jpg', content_type: 'image/jpg')
jeans1.pictures.attach(io: file32, filename: 'jeans1.jpg', content_type: 'image/jpg')
jeans1.pictures.attach(io: file33, filename: 'jeans1.jpg', content_type: 'image/jpg')
jeans1.save!

# file4 = URI.open('https://cdn11.bigcommerce.com/s-qb5zncdqc6/images/stencil/2048x2048/products/5840/11417/womenssimplepantsblack__49371.1578586139.jpg?c=2')
# pants = Item.new(name: 'Pants', brand: 'Prada', description: 'Bought these on a market in Bangkok and paid alot of money, they are not fake the guy said.', min_price: 250, max_price: 1000, user: felix)
# pants.pictures.attach(io: file4, filename: 'pants.jpg', content_type: 'image/jpg')
# pants.save!

# file5 = URI.open('https://tres-bien.com/media/catalog/product/cache/4df57bf4c117b7e5982dee8955fd82cb/s/t/sterling-ruby_191205_035.jpg')
# pants = Item.new(name: 'Pants', brand: 'Prada', description: 'Bought these on a market in Bangkok and paid alot of money, they are not fake the guy said.', min_price: 250, max_price: 1000, user: felix)
# pants.pictures.attach(io: file5, filename: 'pants.jpg', content_type: 'image/jpg')
# pants.save!


# file6 = URI.open('https://cdn11.bigcommerce.com/s-rxzabllq/images/stencil/1280x1280/products/910/18045/Kids-Plain-Poly-Fit-Quick_Dry-Tshirt-red__13799.1567089094.jpg?c=2')
# tshirt = Item.new(name: 'T-Shirt', brand: 'H&M', description: 'Just take it..', min_price: 250, max_price: 1000, user: alex)
# tshirt.pictures.attach(io: file6, filename: 'tshirt.jpg', content_type: 'image/jpg')
# tshirt.save!

# file7 = URI.open('https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1547146139/product-image/2078M_11_d.jpg')
# jacket = Item.new(name: 'Jacket', brand: 'Gucci', description: 'Vintage gucci from fall season 1995.', min_price: 250, max_price: 1000, user: nina)
# jacket.pictures.attach(io: file7, filename: 'jacket.jpg', content_type: 'image/jpg')
# jacket.save!

# file8 = URI.open('https://s3.amazonaws.com/nikeinc/assets/84925/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_rectangle_1600.jpg?1547068102')
# shoes = Item.new(name: 'Shoe', brand: 'Louboutin', description: 'Worn three times, no damages!', min_price: 250, max_price: 1000, user: felix)
# shoes.pictures.attach(io: file8, filename: 'shoes.jpg', content_type: 'image/jpg')
# shoes.save!

