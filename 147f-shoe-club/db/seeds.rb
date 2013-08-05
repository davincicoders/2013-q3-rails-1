# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Customer.count == 0
  Customer.create
else
  puts "Already created Customer"
end

if USState.count == 0
  USState.create(name: "Alabama", abbreviation: "AL")
  USState.create(name: "Alaska", abbreviation: "AK")
  USState.create(name: "Arizona", abbreviation:"AZ")
  USState.create(name: "Arkansas", abbreviation: "AR")
  USState.create(name: "California", abbreviation: "CA")
  USState.create(name: "Colorado", abbreviation: "CO")
  USState.create(name: "Connecticut", abbreviation:"CT")
  USState.create(name: "Delaware", abbreviation: "DE")
  USState.create(name: "Florida", abbreviation:"FL")
  USState.create(name: "Georgia", abbreviation:"GA")
  USState.create(name: "Hawaii", abbreviation: "HI")
  USState.create(name: "Idaho", abbreviation:"ID")
  USState.create(name: "Illinois", abbreviation: "IL")
  USState.create(name: "Indiana", abbreviation:"IN")
  USState.create(name: "Iowa", abbreviation: "IA")
  USState.create(name: "Kansas", abbreviation: "KS")
  USState.create(name: "Kentucky", abbreviation: "KY")
  USState.create(name: "Louisiana", abbreviation:"LA")
  USState.create(name: "Maine", abbreviation:"ME")
  USState.create(name: "Maryland", abbreviation: "MD")
  USState.create(name: "Massachusetts", abbreviation:"MA")
  USState.create(name: "Michigan", abbreviation: "MI")
  USState.create(name: "Minnesota", abbreviation:"MN")
  USState.create(name: "Mississippi", abbreviation:"MS")
  USState.create(name: "Missouri", abbreviation: "MO")
  USState.create(name: "Montana", abbreviation:"MT")
  USState.create(name: "Nebraska", abbreviation: "NE")
  USState.create(name: "Nevada", abbreviation: "NV")
  USState.create(name: "New Hampshire", abbreviation:"NH")
  USState.create(name: "New Jersey", abbreviation:"NJ")
  USState.create(name: "New Mexico", abbreviation:"NM")
  USState.create(name: "New York", abbreviation:"NY")
  USState.create(name: "North Carolina", abbreviation:"NC")
  USState.create(name: "North Dakota", abbreviation:"ND")
  USState.create(name: "Ohio", abbreviation: "OH")
  USState.create(name: "Oklahoma", abbreviation: "OK")
  USState.create(name: "Oregon", abbreviation: "OR")
  USState.create(name: "Pennsylvania", abbreviation: "PA")
  USState.create(name: "Rhode Island", abbreviation:"RI")
  USState.create(name: "South Carolina", abbreviation:"SC")
  USState.create(name: "South Dakota", abbreviation:"SD")
  USState.create(name: "Tennessee", abbreviation:"TN")
  USState.create(name: "Texas", abbreviation:"TX")
  USState.create(name: "Utah", abbreviation: "UT")
  USState.create(name: "Vermont", abbreviation:"VT")
  USState.create(name: "Virginia", abbreviation: "VA")
  USState.create(name: "Washington", abbreviation: "WA")
  USState.create(name: "West Virginia", abbreviation:"WV")
  USState.create(name: "Wisconsin", abbreviation:"WI")
  USState.create(name: "Wyoming", abbreviation:"WY")
  USState.create(name: "District of Columbia", abbreviation: "DC")
else
  puts "Already created states"
end
