# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create(name: Faker::Internet.user_name)
end

10.times do
  Book.create(
    title: Faker::Hipster.sentence(3),
    author: Faker::Team.name,
    publisher: Faker::Team.name,
    user_id: Faker::Number.between(1, 10)
  )
end
