# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RacingGoat.create(
  name: "Rhonda",
  gender: "female",
  best_100m_time: "0:17",
  dietary_preference: "oats"
)

RacingGoat.create(
  name: "Jake",
  gender: "male",
  best_100m_time: "0:20",
  dietary_preference: "carrots"
)
