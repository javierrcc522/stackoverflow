# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all


10.times do |index|
  User.create!(name: Faker::Name.first_name,
              language: Faker::Hacker.verb,
              image: Faker::Avatar.image("my-own-slug", "50x50", "jpg"))

end
p "Created #{User.count} users"
