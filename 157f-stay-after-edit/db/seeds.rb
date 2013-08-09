# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Phone.create(country_code: "US", number: "123-456-7890", phone_type: "C",
  :has_voice_mail => true)

Phone.create(country_code: "IN", number: "123-45678901", phone_type: "H",
  :has_voice_mail => false)

Phone.create(country_code: "AU", number: "01 2345 6789", phone_type: "W",
  :has_voice_mail => true)
