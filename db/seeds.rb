require "faker"

puts "Creating 5 fake users..."

5.times do
  User.create!(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "Finished creating users"

puts "---------------------------------"

puts "Creating 20 fake planets..."

20.times do
  Planet.create!(name: Faker::Space.star, details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 100..5000), user: User.all.sample)
end

puts "Finished creating planets"

puts "All finished!"
