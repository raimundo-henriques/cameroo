# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all

user1 = User.create(email: "raimundo.henriques@gmail.com", password: "123456")
user2 = User.create(email: "ricardosilva.rss@gmail.com", password: "789101112")
user3 = User.create(email: "guygb91@gmail.com", password: "131415161718")
user4 = User.create(email: "ja.melo321@gmail.com", password: "192021222324")

5.times do
  Item.create!(
    name: Faker::Camera.brand_with_model,
    description: Faker::Lorem.paragraphs,
    price: rand(10..50),
    address: Faker::Address.city,
    picture: "https://www.clickandplayrent.com/wp-content/uploads/2020/06/3-camara-red-dragon-x-dscmc2.jpg",
    user: user1
  )
end

5.times do
  Item.create!(
    name: Faker::Camera.brand_with_model,
    description: Faker::Lorem.paragraphs,
    price: rand(10..50),
    address: Faker::Address.city,
    picture: "https://www.clickandplayrent.com/wp-content/uploads/2020/06/3-camara-red-dragon-x-dscmc2.jpg",
    user: user2
  )
end

5.times do
  Item.create!(
    name: Faker::Camera.brand_with_model,
    description: Faker::Lorem.paragraphs,
    price: rand(10..50),
    address: Faker::Address.city,
    picture: "https://www.clickandplayrent.com/wp-content/uploads/2020/06/3-camara-red-dragon-x-dscmc2.jpg",
    user: user3
  )
end

5.times do
  Item.create!(
    name: Faker::Camera.brand_with_model,
    description: Faker::Lorem.paragraphs,
    price: rand(10..50),
    address: Faker::Address.city,
    picture: "https://www.clickandplayrent.com/wp-content/uploads/2020/06/3-camara-red-dragon-x-dscmc2.jpg",
    user: user4
  )
end
