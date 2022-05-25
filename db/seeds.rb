# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Item.destroy_all
User.destroy_all


user1 = User.create(email: "raimundo.henriques@gmail.com", password: "123456")
user2 = User.create(email: "ricardosilva.rss@gmail.com", password: "789101112")
user3 = User.create(email: "guygb91@gmail.com", password: "131415161718")
user4 = User.create(email: "ja.melo321@gmail.com", password: "192021222324")

20.times do
  item = Item.create!(
    name: Faker::Camera.brand_with_model,
    description: Faker::Lorem.paragraphs.join(" "),
    price: rand(10..50),
    address: Faker::Address.city,
    user: [user1, user2, user3, user4].sample
  )
  file = File.open(Rails.root.join("db/resources/camera.jpeg"))
  item.photo.attach(io: file, filename: 'camera.jpeg', content_type: 'image/jpeg')
end

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
