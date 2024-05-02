require "faker"
require "open-uri"

puts "Cleaning database..."
Planet.destroy_all
User.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Cleaned the DB!"

puts "Creating 1 admin user..."

User.create!(email: "admin@astralescapes.com", password: "123456", first_name: "Admin", last_name: "Admin")

puts "Finished creating 1 admin user"

puts "---------------------------------"


puts "Creating 38 planets..."

review = Review.new(content:"very good", rating: 5, booking: Booking.first)
review.save
planet = Planet.new(name: "Abbassia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481596/1_kwwe6m.jpg")
planet.planet_img.attach(io: file, filename: "1.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Arcadia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481601/2_wnfhfa.jpg")
planet.planet_img.attach(io: file, filename: "2.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Bara Gaon 5", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481602/3_czcsnc.jpg")
planet.planet_img.attach(io: file, filename: "3.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Castila", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481599/4_l8cqqz.jpg")
planet.planet_img.attach(io: file, filename: "4.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Eudoxia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481610/5_mjtnwq.jpg")
planet.planet_img.attach(io: file, filename: "5.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Firdaws", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481609/6_ksaltr.jpg")
planet.planet_img.attach(io: file, filename: "6.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Freehold", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481608/7_fd5x0n.jpg")
planet.planet_img.attach(io: file, filename: "7.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Gedara", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481606/8_cwq6fc.jpg")
planet.planet_img.attach(io: file, filename: "8.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Gethen", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481604/9_faxl30.jpg")
planet.planet_img.attach(io: file, filename: "9.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Hope 712", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481606/10_wwjtvs.jpg")
planet.planet_img.attach(io: file, filename: "10.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Ilus IV", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481607/11_nslmaa.jpg")
planet.planet_img.attach(io: file, filename: "11.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Jannah", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481609/12_br2sw4.jpg")
planet.planet_img.attach(io: file, filename: "12.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Laconia", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481611/13_abkzzy.jpg")
planet.planet_img.attach(io: file, filename: "13.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Navnan Ghar", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481609/14_zynmkx.jpg")
planet.planet_img.attach(io: file, filename: "14.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "New Cyprus", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/15_uqbf82.jpg")
planet.planet_img.attach(io: file, filename: "15.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "New Triton", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481609/16_zbjpxp.jpg")
planet.planet_img.attach(io: file, filename: "16.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Nieuwestad", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/17_jk1c6l.jpg")
planet.planet_img.attach(io: file, filename: "17.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Nova Brasil", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481611/18_o1yoge.jpg")
planet.planet_img.attach(io: file, filename: "18.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Nyingchi Xin", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481612/19_vkflgw.jpg")
planet.planet_img.attach(io: file, filename: "19.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Paradiso", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481613/20_sg0d4i.jpg")
planet.planet_img.attach(io: file, filename: "20.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Persephone", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/21_vayjfy.jpg")
planet.planet_img.attach(io: file, filename: "21.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Patria X", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/22_yupikn.jpg")
planet.planet_img.attach(io: file, filename: "22.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Riocht", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/23_nbgoia.jpg")
planet.planet_img.attach(io: file, filename: "23.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "San Esteban", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481614/24_zf5vo3.jpg")
planet.planet_img.attach(io: file, filename: "24.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Sanaang", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481615/25_y2zonp.jpg")
planet.planet_img.attach(io: file, filename: "25.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Sanctuary", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481616/26_psqlws.jpg")
planet.planet_img.attach(io: file, filename: "26.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Saraswati", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481615/27_f3veqc.jpg")
planet.planet_img.attach(io: file, filename: "27.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Sigurta", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481615/28_qoe4cq.jpg")
planet.planet_img.attach(io: file, filename: "28.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Talbalta", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481616/29_ht4ven.jpg")
planet.planet_img.attach(io: file, filename: "29.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Tasnim", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481615/30_gokua6.jpg")
planet.planet_img.attach(io: file, filename: "30.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Thanjavur Colony", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481616/31_gyw0f4.jpg")
planet.planet_img.attach(io: file, filename: "31.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Walton", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481620/32_ryz7gs.jpg")
planet.planet_img.attach(io: file, filename: "32.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Yasamal", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481617/33_ygwsox.jpg")
planet.planet_img.attach(io: file, filename: "33.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Dobridomov", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481619/34_kewhzs.jpg")
planet.planet_img.attach(io: file, filename: "34.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Chrysanthemum", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481622/35_jr89fk.jpg")
planet.planet_img.attach(io: file, filename: "35.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Corazón", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481622/36_tvzecp.jpg")
planet.planet_img.attach(io: file, filename: "36.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "New Athens", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481621/37_fjlxtl.jpg")
planet.planet_img.attach(io: file, filename: "37.jpg", content_type: "image/jpg")
planet.save

planet = Planet.new(name: "Al-Halub", details: Faker::Space.star_cluster, location: Faker::Space.galaxy, price_per_night: Faker::Number.within(range: 1000..10000), distance: Faker::Space.distance_measurement, user: User.first)
file = URI.open("https://res.cloudinary.com/dyfh0tbvl/image/upload/v1714481620/38_t7cidi.jpg")
planet.planet_img.attach(io: file, filename: "38.jpg", content_type: "image/jpg")
planet.save

puts "Finished creating 38 planets"

puts "---------------------------------"

puts "Creating 3 bookings..."

Booking.create!(visitor_id: 1, planet_id: 38, start_date: "2544-05-09", end_date: "2544-05-31", status: "Unconfirmed")
Booking.create!(visitor_id: 1, planet_id: 31, start_date: "2544-06-22", end_date: "2544-07-22", status: "Unconfirmed")
Booking.create!(visitor_id: 1, planet_id: 7, start_date: "2544-12-01", end_date: "2544-12-31", status: "Confirmed")

puts "Finished creating 3 bookings"

puts "---------------------------------"

puts "Finished seeding the DB!"
