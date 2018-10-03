require 'faker'
require 'json'
require 'open-uri'


puts "start creating user"

DL = ["A2", "A1", "AM", "Car"]
EXPERIENCE = [10, 100, 1000, 5000, 15000, 30000]
BIRTH_YEAR = Date.today

(1..15).to_a.each do |number|
  user = User.new(
    name: Faker::TwinPeaks.character,
    email: Faker::Internet.email,
    password: "topsecret",
    dl_type: DL.sample,
    experience: EXPERIENCE.sample,
    birth_date: BIRTH_YEAR,
    )
  user.save!

  YEAR = (1985..2018).to_a
  TYPE = ["Street", "Cruiser", "Sport bike", "Touring", "Sport touring", "Dual-sport", "Scooters and mopeds", "Off-road", "Enclosed", "Utility", "Tricycles"]
  MILES = (0..15000).to_a
  PARKING = ["own parking", "covered parking", "street"]
  moto = Moto.new(
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: YEAR.sample,
    moto_type: TYPE.sample,
    mileage: MILES.sample,
    address: Faker::Address.city,
    user: User.last
    )
  moto.save!
end

puts "I'm done!"
