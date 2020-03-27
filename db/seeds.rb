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

raphaelle_image = URI.open('https://avatars2.githubusercontent.com/u/60267962?s=460&v=4')
raphaelle = User.create!(email: 'raphaelle@gmail.com', username: 'raphaelle', password: '123456', location: 'Stockholm')
raphaelle.avatar.attach(io: raphaelle_image, filename: 'raphaelle.jpg', content_type: 'image/jpg')
raphaelle.save!

madeleine_image = URI.open('https://avatars0.githubusercontent.com/u/60282525?s=460&u=16f073fa53b604e80266e4a0dd684512d3a29b10&v=4')
madeleine = User.create!(email: 'madeleine@gmail.com', username: 'madeleine', password: '123456', location: 'Stockholm')
madeleine.avatar.attach(io: madeleine_image, filename: 'madeleine.jpg', content_type: 'image/jpg')
madeleine.save!

sander_image = URI.open('https://avatars3.githubusercontent.com/u/53917461?v=4')
sander = User.create!(email: 'sander@gmail.com', username: 'sander', password: '123456', location: 'Stockholm')
sander.avatar.attach(io: sander_image, filename: 'sander.jpg', content_type: 'image/jpg')
sander.save!

gheorghe_image = URI.open('https://avatars1.githubusercontent.com/u/58052561?v=4')
gheorghe = User.create!(email: 'gheorghe@gmail.com', username: 'gheorghe', password: '123456', location: 'Stockholm')
gheorghe.avatar.attach(io: gheorghe_image, filename: 'gheorghe.jpg', content_type: 'image/jpg')
gheorghe.save!


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
table1 = Item.new(name: 'table', brand: 'Wood Wood', description: 'Crafted with tapered legs, curved corners, and subtle hints of brushed brass, this Mid Century-inspired piece lends a touch of casual charm to dining rooms, breakfast nooks, and eat-in kitchens alike.', min_price: 250, max_price: 1000, user: felix)
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


file32 = URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.realsimple.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Frs_horizontal_image_4%2Fpublic%2F1479312216%2Fwhite-house-black-market-jacquard-high-low-dress.jpg')
file33 = URI.open("https://res.cloudinary.com/dgfsnlcab/image/upload/v1585324133/dress_xi0lbx.jpg")
# file34 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/8b/eb/8beb5926b91443c88182621e69809c324db46cb4.jpg],origin[dam],category[ladies_dresses_mididresses],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
dress1 = Item.new(name: 'Dress', brand: 'H&M', description: 'Sleeveless, calf-length in woven, crinkled fabric with a ruffle at neckline extending over shoulder straps.', min_price: 250, max_price: 900, user: raphaelle)
dress1.pictures.attach(io: file32, filename: 'dress1.jpg', content_type: 'image/jpg')
dress1.pictures.attach(io: file33, filename: 'dress1.jpg', content_type: 'image/jpg')
# dress1.pictures.attach(io: file34, filename: 'dress1.jpg', content_type: 'image/jpg')
dress1.save!



file35 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Chino_pants.jpg/450px-Chino_pants.jpg')
# file36 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/67/61/676173c98cbd0bde4bdad7d38e75a68e5eaf06e7.jpg],origin[dam],category[ladies_trousers],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file37 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/ec/06/ec064c300dfa8bbca0214ba75d2af721c0b41442.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
pants1 = Item.new(name: 'Pants', brand: 'H&M', description: 'Ankle-length pants in viscose-blend twill with a high waist.', min_price: 150, max_price: 600, user: raphaelle)
pants1.pictures.attach(io: file35, filename: 'pants1.jpg', content_type: 'image/jpg')
# pants1.pictures.attach(io: file32, filename: 'pants1.jpg', content_type: 'image/jpg')
# pants1.pictures.attach(io: file33, filename: 'pants1.jpg', content_type: 'image/jpg')
pants1.save!

# file38 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/1a/6f/1a6f74dbb5f56c542d67f6d56b4a685c551af3fe.jpg],origin[dam],category[ladies_shoes_sneakers],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file39 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/83/a6/83a6a9b4da890cb86273833be210f0a28567ddab.jpg],origin[dam],category[ladies_shoes_sneakers],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file40 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/f5/bf/f5bfc645f3ccf9262ea312d0e8c97b2062b695bf.jpg],origin[dam],category[ladies_shoes_sneakers],type[DESCRIPTIVEDETAIL],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# shoes1 = Item.new(name: 'Shoes', brand: 'H&M', description: 'Platform sneakers with lacing at front. Cotton canvas lining and insoles.', min_price: 100, max_price: 300, user: raphaelle)
# shoes1.pictures.attach(io: file31, filename: 'shoes1.jpg', content_type: 'image/jpg')
# shoes1.pictures.attach(io: file32, filename: 'shoes1.jpg', content_type: 'image/jpg')
# shoes1.pictures.attach(io: file33, filename: 'shoes1.jpg', content_type: 'image/jpg')
# shoes1.save!

file41 = URI.open('https://media2.s-nbcnews.com/j/newscms/2017_29/1229402/traveling-dress-today-inline-170718_813c195488099d4eeb6f0a91b296dae7.fit-720w.jpg')
# file42 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/97/b6/97b69030e17e2c4f95bbfc50bdc08498e1b1f25c.jpg],origin[dam],category[ladies_dresses_shortdresses],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file43 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/bc/44/bc44486d9f308d5096402a10e9875030c53459ba.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
dress2 = Item.new(name: 'Dress', brand: 'H&M', description: 'Knee-length dress in cotton slub jersey. V-neck, butterfly sleeves, and gathered, elasticized seam at waist.', min_price: 100, max_price: 300, user: madeleine)
dress2.pictures.attach(io: file41, filename: 'dress2.jpg', content_type: 'image/jpg')
# dress2.pictures.attach(io: file32, filename: 'dress2.jpg', content_type: 'image/jpg')
# dress2.pictures.attach(io: file33, filename: 'dress2.jpg', content_type: 'image/jpg')
dress2.save!

# file44 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/9e/33/9e33cda8c4e052cb921aac866e04a295652535d7.jpg],origin[dam],category[ladies_dresses_mididresses],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file45 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/4d/3d/4d3d2f83114098a53e4c6e999b21ea2e148dbbc7.jpg],origin[dam],category[ladies_dresses_mididresses],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file46 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/fe/7e/fe7ee22d94f461f221adc71ec9dfe8059adb4067.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# dress3 = Item.new(name: 'Dress', brand: 'H&M', description: 'Calf-length dress in airy, woven viscose fabric. Round neckline with decorative gathers, opening at back of neck with button, and wide, elbow-length raglan sleeves.', min_price: 200, max_price: 350, user: madeleine)
# dress3.pictures.attach(io: file31, filename: 'dress3.jpg', content_type: 'image/jpg')
# dress3.pictures.attach(io: file32, filename: 'dress3.jpg', content_type: 'image/jpg')
# dress3.pictures.attach(io: file33, filename: 'dress3.jpg', content_type: 'image/jpg')
# dress3.save!

file47 = URI.open('https://img.starwarsbutiken.se/t-shirts/star-wars-the-rise-of-skywalker-t-shirt-basic-tee-400x400.jpg')
# file48 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/a7/f8/a7f898c6cb8c440583ce2bf53d31cb173d9210de.jpg],origin[dam],category[men_tshirtstanks_shortsleeve],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file49 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/9a/29/9a291dda81a32d3e8038c2a50766041a19983230.jpg],origin[dam],category[men_tshirtstanks_shortsleeve],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
tshirt1 = Item.new(name: 'T-shirt', brand: 'H&M', description: 'Straight-cut T-shirt in thick cotton jersey with a printed design front and back. Trimmed crew neck.', min_price: 100, max_price: 200, user: sander)
tshirt1.pictures.attach(io: file47, filename: 'tshirt1.jpg', content_type: 'image/jpg')
# tshirt1.pictures.attach(io: file32, filename: 'tshirt1.jpg', content_type: 'image/jpg')
# tshirt1.pictures.attach(io: file33, filename: 'tshirt1.jpg', content_type: 'image/jpg')
tshirt1.save!

# file50 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/7b/b4/7bb41e3d6a58203792a2ff793e33a114e5d25044.jpg],origin[dam],category[men_tshirtstanks_longsleeve],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file51 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/a9/c4/a9c4d1d5d07ecd69db2650b7e7993149fb89545a.jpg],origin[dam],category[men_tshirtstanks_longsleeve],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file52 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/00/23/002387527ef3802c12adcb7922dad2d7d3e4b373.jpg],origin[dam],category[men_tshirtstanks_longsleeve],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# tshirt1 = Item.new(name: 'Printed shirt', brand: 'H&M', description: 'Straight-cut T-shirt in thick cotton jersey with a printed design front and back. Trimmed crew neck.', min_price: 150, max_price: 250, user: sander)
# shirt1.pictures.attach(io: file31, filename: 'shirt1.jpg', content_type: 'image/jpg')
# shirt1.pictures.attach(io: file32, filename: 'shirt1.jpg', content_type: 'image/jpg')
# shirt1.pictures.attach(io: file33, filename: 'shirt1.jpg', content_type: 'image/jpg')
# shirt1.save!

file53 = URI.open('https://img10.joybuy.com/img/jfs/t1/3662/31/4473/117936/5b9c715cE6ca90022/6fe142d7ddc11c3c.jpg.dpg')
# file54 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/d6/96/d6965ac162d507e7f561405a1da7e311528adf6e.jpg],origin[dam],category[men_hoodiessweatshirts_hoodies],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file55 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/1b/d9/1bd9f78e40abc29ab8fe8d2dfaa14e75295aa1ee.jpg],origin[dam],category[men_hoodiessweatshirts_hoodies],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
jacket1 = Item.new(name: 'Hooded jacket', brand: 'H&M', description: 'Lightweight sweatshirt jacket with a double-layered, drawstring hood. Zipper at front, side pockets, and ribbing at cuffs and hem.', min_price: 100, max_price: 250, user: gheorghe)
jacket1.pictures.attach(io: file53, filename: 'jacket1.jpg', content_type: 'image/jpg')
# jacket1.pictures.attach(io: file32, filename: 'jacket1.jpg', content_type: 'image/jpg')
# jacket1.pictures.attach(io: file33, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.save!

# file56 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/31/c3/31c39de59e8a211a7653c25fd158ddc7e8b8b49f.jpg],origin[dam],category[men_jeans_slim],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file57 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/15/ed/15ed420fa8e0fe74c107f9e1620f290447abaabe.jpg],origin[dam],category[men_jeans_slim],type[LOOKBOOK],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# file58 = URI.open('https://lp2.hm.com/hmgoepprod?set=quality[79],source[/81/65/8165668289603f5ecc3b91f56632228c36d3c315.jpg],origin[dam],category[men_jeans_slim],type[DESCRIPTIVESTILLLIFE],res[x],hmver[1]&call=url[file:/product/fullscreen]')
# jeans2 = Item.new(name: 'Jeans', brand: 'H&M', description: '5-pocket jeans in washed denim with a regular waist, zip fly, and slim legs.', min_price: 100, max_price: 200, user: gheorghe)
# jeans2.pictures.attach(io: file31, filename: 'jeans2.jpg', content_type: 'image/jpg')
# jeans2.pictures.attach(io: file32, filename: 'jeans2.jpg', content_type: 'image/jpg')
# jeans2.pictures.attach(io: file33, filename: 'jeans2.jpg', content_type: 'image/jpg')
# jeans2.save!

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

