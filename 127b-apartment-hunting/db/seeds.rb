# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Apartment.create(
  address: "16th and Grove St",
  rent_per_month: 1550,
  num_bedrooms: 2,
  does_allow_pets: nil,
  url: "http://boulder.craigslist.org/apa/3955759859.html"
)

Apartment.create(
  address: "near Spine and White Rock Circle",
  rent_per_month: 800,
  num_bedrooms: 1,
  does_allow_pets: nil,
  url: "http://boulder.craigslist.org/apa/3955744060.html"
)

Apartment.create(
  address: "Cascade Av at 17th St",
  rent_per_month: 2600,
  num_bedrooms: 4,
  does_allow_pets: false,
  url: "http://boulder.craigslist.org/apa/3924175915.html"
)

Apartment.create(
  address: "Broadway by Proto's Pizza",
  rent_per_month: 1350,
  num_bedrooms: 1,
  does_allow_pets: true,
  url: "http://boulder.craigslist.org/apa/3955428114.html"
)
