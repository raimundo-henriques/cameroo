# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Booking.destroy_all
Item.destroy_all
User.destroy_all

user1 = User.create(email: "raimundo.henriques@gmail.com", password: "123456")
user2 = User.create(email: "ricardosilva.rss@gmail.com", password: "789101112")
user3 = User.create(email: "guygb91@gmail.com", password: "131415161718")
user4 = User.create(email: "ja.melo321@gmail.com", password: "192021222324")

item1 = Item.create!(
  name: "Hasselblad H6D-100c",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: "Lisbon",
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/multiple_images/images500x500/1460024052_IMG_613113.jpg')
item1.photo.attach(io: file, filename: '1460024052_IMG_613113.jpg', content_type: 'image/jpg')
# file = File.open(Rails.root.join("https://static.bhphoto.com/images/multiple_images/images500x500/1460024052_IMG_613113.jpg"))
# item.photo.attach(io: file, filename: 'camera.jpeg', content_type: 'image/jpg')

item2 = Item.create!(
  name: "Nikon D6 DSLR Camera",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: "Lisbon",
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1635408331_1629829.jpg')
item2.photo.attach(io: file, filename: '1635408331_1629829.jpg', content_type: 'image/jpg')

item3 = Item.create!(
  name: "Sony a7 IV Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images2000x2000/1634812545_1667800.jpg')
item3.photo.attach(io: file, filename: '1634812545_1667800.jpg', content_type: 'image/jpg')

item4 = Item.create!(
  name: "Leica SL2 Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: "Lisbon",
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1620290768_1639034.jpg')
item4.photo.attach(io: file, filename: '1620290768_1639034.jpg', content_type: 'image/jpg')

item5 = Item.create!(
  name: "Hasselblad 907X Anniversary Edition",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images2000x2000/1632998793_1664488.jpg')
item5.photo.attach(io: file, filename: '1632998793_1664488.jpg', content_type: 'image/jpg')

item6 = Item.create!(
  name: "Canon EOS R7 Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/multiple_images/images500x500/1653386999_IMG_1760259.jpg')
item6.photo.attach(io: file, filename: '1653386999_IMG_1760259.jpg', content_type: 'image/jpg')

item7 = Item.create!(
  name: "Nikon Z9 Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images1000x1000/1635408331_1629829.jpg')
item7.photo.attach(io: file, filename: '1635408331_1629829.jpg', content_type: 'image/jpg')

item8 = Item.create!(
  name: "Panasonic Lumix GH6",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1645472723_1641783.jpg')
item8.photo.attach(io: file, filename: '1645472723_1641783.jpg', content_type: 'image/jpg')

item9 = Item.create!(
  name: "Olympus OM-D E-M10 Mark IV Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1603883129_1576158.jpg')
item9.photo.attach(io: file, filename: '1603883129_1576158.jpg', content_type: 'image/jpg')

item10 = Item.create!(
  name: "FUJIFILM X-T30 II Mirrorless",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1630576160_1662378.jpg')
item10.photo.attach(io: file, filename: '1630576160_1662378.jpg', content_type: 'image/jpg')

item11 = Item.create!(
  name: "Leica M10-R Rangefinder",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/images500x500/1594889195_1571536.jpg')
item11.photo.attach(io: file, filename: '1594889195_1571536.jpg', content_type: 'image/jpg')

item12 = Item.create!(
  name: "Kodak Tri-X 400",
  description: Faker::Lorem.paragraphs.join(" "),
  price: rand(1000..5000),
  address: Faker::Address.city,
  user: [user1, user2, user3, user4].sample
)
file = URI.open('https://static.bhphoto.com/images/multiple_images/images500x500/1639676718_IMG_1662438.jpg')
item12.photo.attach(io: file, filename: '1639676718_IMG_1662438.jpg', content_type: 'image/jpg')


5.times do
  random_item = Item.all.sample
  item = Item.find(random_item.id)
  Booking.create!(user: user1, item: item, start_date: 20230101, end_date: 20230102)
end

5.times do
  random_item = Item.all.sample
  item = Item.find(random_item.id)
  Booking.create!(user: user2, item: item, start_date: 20230101, end_date: 20230102)
end
