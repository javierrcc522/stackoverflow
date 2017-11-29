# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Question.destroy_all


17.times do |index|
  User.create!(name: Faker::Name.unique.first_name,
              language: Faker::Hacker.verb,
              image: Faker::Avatar.image("my-own-slug", "70x70", "jpg"))

end
p "Created #{User.count} users"


230.times do |index|
  Question.create!(title: Faker::RickAndMorty.quote,
                  description: Faker::Lorem.sentence,
                  tag: Faker::Color.color_name,
                  user_id: Faker::Number.between(User.first.id, User.last.id))

end

p "Created #{Question.count} Question"
