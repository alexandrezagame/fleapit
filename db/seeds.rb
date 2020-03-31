# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Match.destroy_all
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

file34 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585562339/Clothes/fk26946_cmintpowde_3_jgmnhu.jpg')
file35 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585562336/Clothes/fk26946_cmintpowde1_flqdov.jpg')
file36 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585562255/Clothes/fk26946_cmintpowde_exemmo.jpg')
dress1 = Item.new(name: 'Dress', brand: 'Filippa K', description: 'The Milla Dress is made in a softly draped recycled chiffon. It has a regular fit and clean lines, with a covered button placket at the front. A belt cinches the waist through loops at the side seams, above side slits that have a delicate finish. The shoulder seam has a classic fit, and the dress has a round neck and knee-length hem.', min_price: 850, max_price: 1200, user: madeleine)
dress1.pictures.attach(io: file34, filename: 'dress1.jpg', content_type: 'image/jpg')
dress1.pictures.attach(io: file35, filename: 'dress1.jpg', content_type: 'image/jpg')
dress1.pictures.attach(io: file36, filename: 'dress1.jpg', content_type: 'image/jpg')
dress1.save!

file37 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585566846/Home%20decoration/sultan-kontinentals%C3%A4ng-120x200-vit-1233063_gboye3.jpg')
file38 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585566762/Home%20decoration/sultan-kontinentals%C3%A4ng-120x200-vit-1443893_ngrwka.jpg')
file39 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585566758/Home%20decoration/sultan-kontinentals%C3%A4ng-120x200-vit-1235667_no94m9.jpg')
bed1 = Item.new(name: 'Bed', brand: 'Mio', description: 'Sultan Continental bed 120x200 white', min_price: 5000, max_price: 7000, user: madeleine)
bed1.pictures.attach(io: file37, filename: 'bed1.jpg', content_type: 'image/jpg')
bed1.pictures.attach(io: file38, filename: 'bed1.jpg', content_type: 'image/jpg')
bed1.pictures.attach(io: file39, filename: 'bed1.jpg', content_type: 'image/jpg')
bed1.save!

file40 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585574727/Clothes/hmgoepprod2_hamplz.jpg')
file41 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585574726/Clothes/hmgoepprod1_sqisnp.jpg')
file42 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585574723/Clothes/hmgoepprod_gq5xr3.jpg')
dress2 = Item.new(name: 'Dress', brand: 'H&M', description: 'Knee-length dress in cotton slub jersey. V-neck, butterfly sleeves, and gathered, elasticized seam at waist.', min_price: 150, max_price: 300, user: raphaelle)
dress2.pictures.attach(io: file40, filename: 'dress2.jpg', content_type: 'image/jpg')
dress2.pictures.attach(io: file41, filename: 'dress2.jpg', content_type: 'image/jpg')
dress2.pictures.attach(io: file42, filename: 'dress2.jpg', content_type: 'image/jpg')
dress2.save!

file43 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585577845/Clothes/hmgoepprodraphaelle1_fyef5f.jpg')
file44 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585577848/Clothes/hmgoepprodraphaelle2_vaspmi.jpg')
file45 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585577842/Clothes/hmgoepprod3_mmcr0s.jpg')
dress3 = Item.new(name: 'Dress', brand: 'H&M', description: 'Calf-length dress in airy, woven viscose fabric. Round neckline with decorative gathers, opening at back of neck with button, and wide, elbow-length raglan sleeves.', min_price: 200, max_price: 350, user: raphaelle)
dress3.pictures.attach(io: file43, filename: 'dress3.jpg', content_type: 'image/jpg')
dress3.pictures.attach(io: file44, filename: 'dress3.jpg', content_type: 'image/jpg')
dress3.pictures.attach(io: file45, filename: 'dress3.jpg', content_type: 'image/jpg')
dress3.save!

file46 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585579046/Home%20decoration/vicenza_l4_1_raphaelle2_jv5oyh.jpg')
file47 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585579049/Home%20decoration/vicenza-s-sizes_raphaelle3_y21oap.jpg')
file48 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585579044/Home%20decoration/vicenza_l3_1_raphaelle1_czv5yh.jpg')
mirror1 = Item.new(name: 'Mirror', brand: 'English decorations', description: 'Fantastic wooden framed mirror with beveled glass. There are two pairs of hooks fitted to back of the mirror frame for easy fixing to the wall.', min_price: 3000, max_price: 4500, user: raphaelle)
mirror1.pictures.attach(io: file46, filename: 'mirror1.jpg', content_type: 'image/jpg')
mirror1.pictures.attach(io: file47, filename: 'mirror1.jpg', content_type: 'image/jpg')
mirror1.pictures.attach(io: file48, filename: 'mirror1.jpg', content_type: 'image/jpg')
mirror1.save!

file49 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585580469/Clothes/hmgoepprodSander_yxqlds.jpg')
file50 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585580405/Clothes/hmgoepprodander1_rfczdj.jpg')
file51 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585580473/Clothes/hmgoepprodSander2_sas3yt.jpg')
sweatshirt1 = Item.new(name: 'Printed sweatshirt', brand: 'H&M', description: 'Top in soft, printed cotton jersey with a round, ribbed neckline and long sleeves with ribbing at the cuffs.', min_price: 150, max_price: 200, user: sander)
sweatshirt1.pictures.attach(io: file49, filename: 'sweatshirt1.jpg', content_type: 'image/jpg')
sweatshirt1.pictures.attach(io: file50, filename: 'sweatshirt1.jpg', content_type: 'image/jpg')
sweatshirt1.pictures.attach(io: file51, filename: 'sweatshirt1.jpg', content_type: 'image/jpg')
sweatshirt1.save!

file52 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585581805/Clothes/hmgoepprodGeorge_oxddhi.jpg')
file53 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585581807/Clothes/hmgoepprodGeorge1_svhfwg.jpg')
file54 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585581811/Clothes/hmgoepprodGeorge2_xabg1c.jpg')
jacket1 = Item.new(name: 'Hooded jacket', brand: 'H&M', description: 'Lightweight sweatshirt jacket with a double-layered, drawstring hood. Zipper at front, side pockets, and ribbing at cuffs and hem.', min_price: 100, max_price: 250, user: gheorghe)
jacket1.pictures.attach(io: file52, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.pictures.attach(io: file53, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.pictures.attach(io: file54, filename: 'jacket1.jpg', content_type: 'image/jpg')
jacket1.save!

file55 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585582664/Clothes/hmgoepprodGeorge3_whjon6.jpg')
file56 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585582670/Clothes/hmgoepprodGeorge5_fyufwx.jpg')
file57 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585582666/Clothes/hmgoepprodGeorge4_ti88eh.jpg')
jeans2 = Item.new(name: 'Jeans', brand: 'H&M', description: '5-pocket jeans in washed denim with a regular waist, zip fly, and slim legs.', min_price: 200, max_price: 300, user: gheorghe)
jeans2.pictures.attach(io: file55, filename: 'jeans2.jpg', content_type: 'image/jpg')
jeans2.pictures.attach(io: file56, filename: 'jeans2.jpg', content_type: 'image/jpg')
jeans2.pictures.attach(io: file57, filename: 'jeans2.jpg', content_type: 'image/jpg')
jeans2.save

file58 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585583692/Electronics/APPLE-iPhone-11George_orqwvc.png')
file59 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585583695/Electronics/APPLE-iPhone-11George1_nzydnb.png')
file60 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585583698/Electronics/APPLE-iPhone-11George2_cz2fmp.png')
mobilephone1 = Item.new(name: 'Iphone 11', brand: 'Media Markt', description: 'Open your eyes and experience the beauty of the world from a new perspective with the iPhone 11 and its 6.1 inch screen. The phone comes with a fast chip and advanced technology.', min_price: 8000, max_price: 9000, user: gheorghe)
mobilephone1.pictures.attach(io: file58, filename: 'mobilephone1.jpg', content_type: 'image/jpg')
mobilephone1.pictures.attach(io: file59, filename: 'mobilephone1.jpg', content_type: 'image/jpg')
mobilephone1.pictures.attach(io: file60, filename: 'mobilephone1.jpg', content_type: 'image/jpg')
mobilephone1.save!

file61 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585585097/Outdoors/Cannondale-Bike_nrs3my.jpg')
file62 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585585102/Outdoors/Cannondale-Bike2_mb3m6w.jpg')
file63 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585585099/Outdoors/Cannondale-Bike1_u16tpr.jpg')
bike1 = Item.new(name: 'Bike', brand: 'Sigma sports', description: 'All-New, BallisTec Carbon frame takes stiff and light to new levels, allowing you to convert more of your power into speed for some seriously explosive sprints. Carbon Fork featuring improved SAVE technology, engineered to absorb road shock and vibration by pairing precise tube shapes with sophisticated carbon layering. Shimano Ultegra 2x11 Speed Drivetrain provides super-fast, smooth and accurate gear changes. Shimano Ultegra hydraulic disc brakes give you complete peace of mind with their reliable and consistent stopping power in all conditions, thanks to sophisticated heat management and pad technology. HollowGram KNØT carbon wheelset paired with Vittoria Rubino Pro 700 x 25c tyres, are super light allowing for blistering acceleration and incredibly responsive handling.', min_price: 20000, max_price: 25000, user: madeleine)
bike1.pictures.attach(io: file61, filename: 'bike1.jpg', content_type: 'image/jpg')
bike1.pictures.attach(io: file62, filename: 'bike1.jpg', content_type: 'image/jpg')
bike1.pictures.attach(io: file63, filename: 'bike1.jpg', content_type: 'image/jpg')
bike1.save!

file64 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585586564/Home%20decoration/darth-vader_sander1_bf8bhq.jpg')
file65 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585586572/Home%20decoration/darth-vader_sander3_ubco4x.jpg')
file66 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585586567/Home%20decoration/darth-vader_sander2_vrppg6.jpg')
darthvader = Item.new(name: 'Darth Vader', brand: 'Side show', description: 'Sideshow, in partnership with Legacy Effects, is proud to unveil the latest in our series of 1:1 scale, life-sized collectibles – Darth Vader! Standing over 7 feet tall this large Darth Vader figure, and movie accurate statue, makes for an imposing and utterly jaw-dropping museum-quality showpiece that is sure to be the pride and joy of any Star Wars fan!', min_price: 20000, max_price: 25000, user: sander)
darthvader.pictures.attach(io: file64, filename: 'darthvader.jpg', content_type: 'image/jpg')
darthvader.pictures.attach(io: file65, filename: 'darthvader.jpg', content_type: 'image/jpg')
darthvader.pictures.attach(io: file66, filename: 'darthvader.jpg', content_type: 'image/jpg')
darthvader.save!

file67 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585588720/Accessories/IMG_7062sander1_hecmou.jpg')
file68 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585588723/Accessories/_MG_6996sander2_f9qdp6.jpg')
file69 = URI.open('https://res.cloudinary.com/dgfsnlcab/image/upload/v1585588726/Accessories/_MG_6997sander3_vzofy2.jpg')
wristwatch = Item.new(name: 'Wrist watch', brand: 'Super hero stuff', description: 'Make Papa Palpatine proud when you rock this officially licensed Star Wars Stormtrooper Watch. Made from stainless steel, this epic Star Wars wristwatch features a loyal Stormtrooper on its face and looks mighty snazzy while keeping track of your blaster practice.', min_price: 2000, max_price: 3000, user: sander)
wristwatch.pictures.attach(io: file67, filename: 'wristwatch.jpg', content_type: 'image/jpg')
wristwatch.pictures.attach(io: file68, filename: 'wristwatch.jpg', content_type: 'image/jpg')
wristwatch.pictures.attach(io: file69, filename: 'wristwatch.jpg', content_type: 'image/jpg')
wristwatch.save!
