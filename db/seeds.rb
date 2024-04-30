require "faker"

puts "Cleaning database..."
Planet.destroy_all
User.destroy_all

puts "Clean!"

puts "Creating 1 admin user..."

User.create!(email: "admin@astralescapes.com", password: "123456", first_name: "Admin", last_name: "Admin")


puts "Finished creating admin user"

puts "---------------------------------"

puts "Creating 38 planets..."


Planet.create!(name: "Abbassia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/1.jpg", user: User.first)

Planet.create!(name: "Arcadia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/2.jpg", user: User.first)

Planet.create!(name: "Bara Gaon 5", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/3.jpg", user: User.first)

Planet.create!(name: "Castila", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/4.jpg", user: User.first)

Planet.create!(name: "Eudoxia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/5.jpg", user: User.first)

Planet.create!(name: "Firdaws", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/6.jpg", user: User.first)

Planet.create!(name: "Freehold", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/7.jpg", user: User.first)

Planet.create!(name: "Gedara", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/8.jpg", user: User.first)

Planet.create!(name: "Gethen", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/9.jpg", user: User.first)

Planet.create!(name: "Hope 712", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/10.jpg", user: User.first)

Planet.create!(name: "Ilus IV", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/11.jpg", user: User.first)

Planet.create!(name: "Jannah", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/12.jpg", user: User.first)

Planet.create!(name: "Laconia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/13.jpg", user: User.first)

Planet.create!(name: "Navnan Ghar", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/14.jpg", user: User.first)

Planet.create!(name: "New Cyprus", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/15.jpg", user: User.first)

Planet.create!(name: "New Triton", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/16.jpg", user: User.first)

Planet.create!(name: "Nieuwestad", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/17.jpg", user: User.first)

Planet.create!(name: "Nova Brasil", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/18.jpg", user: User.first)

Planet.create!(name: "Nyingchi Xin", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/19.jpg", user: User.first)

Planet.create!(name: "Paradiso", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/20.jpg", user: User.first)

Planet.create!(name: "Persephone", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/21.jpg", user: User.first)

Planet.create!(name: "Patria X", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/22.jpg", user: User.first)

Planet.create!(name: "Riocht", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/23.jpg", user: User.first)

Planet.create!(name: "San Esteban", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/24.jpg", user: User.first)

Planet.create!(name: "Sanaang", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/25.jpg", user: User.first)

Planet.create!(name: "Sanctuary", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/26.jpg", user: User.first)

Planet.create!(name: "Saraswati", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/27.jpg", user: User.first)

Planet.create!(name: "Sigurta", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/28.jpg", user: User.first)

Planet.create!(name: "Talbalta", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/29.jpg", user: User.first)

Planet.create!(name: "Tasnim", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/30.jpg", user: User.first)

Planet.create!(name: "Thanjavur Colony", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/31.jpg", user: User.first)

Planet.create!(name: "Walton", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/32.jpg", user: User.first)

Planet.create!(name: "Yasamal", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/33.jpg", user: User.first)

Planet.create!(name: "Dobridomov", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/34.jpg", user: User.first)

Planet.create!(name: "Chrysanthemum", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/35.jpg", user: User.first)

Planet.create!(name: "Corazón Sagrado", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/36.jpg", user: User.first)

Planet.create!(name: "New Athens", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/37.jpg", user: User.first)

Planet.create!(name: "Al-Halub", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, planet_img: "planets/38.jpg", user: User.first)

puts "Finished creating planets"

puts "---------------------------------"

puts "All finished!"
