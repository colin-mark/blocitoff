require 'faker'

# Create Users
20.times do
  User.create!(
    email:    Faker::Internet.unique.email,
    password: Faker::String.unique.random(8..12)
  )
end
users = User.all

20.times do
  Item.create!(
    name: Faker::Name.name_with_middle,
    user: users.sample
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
