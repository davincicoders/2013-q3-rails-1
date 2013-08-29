venue1 = Venue.create! name: "Boulder Theater",
  city: "Boulder", state: "CO"
venue2 = Venue.create! name: "Oregon Convention Center",
  city: "Portland", state: "OR"
venue3 = Venue.create! name: "The St. Julien Hotel and Spa",
  city: "Boulder", state: "CO"

event1 = Event.create! name: "Rocky Mountain Ruby 2013",
  start_date: "2013-09-25", venue: venue1
event2 = Event.create! name: "Ignite Boulder 22",
  start_date: "2013-11-06", venue: venue1
event3 = Event.create! name: "RailsConf 2013",
  start_date: "2013-04-29", venue: venue2
event4 = Event.create! name: "Big Boulder 2013",
  start_date: "2013-06-06", venue: venue3

hotel1 = RecommendedHotel.create! name: "Hotel Boulderado"
hotel2 = RecommendedHotel.create! name: "Millenium Hotel"
hotel3 = RecommendedHotel.create! name: "Boulder Inn"
hotel4 = RecommendedHotel.create! name: "Courtyard by Marriott"
hotel5 = RecommendedHotel.create! name: "DoubleTree"
hotel6 = RecommendedHotel.create! name: "Crowne Plaza"
hotel7 = RecommendedHotel.create! name: "Red Lion Hotel"
hotel8 = RecommendedHotel.create! name: "St. Julien"
hotel9 = RecommendedHotel.create! name: "Boulder Marriott"

venue1.recommended_hotels << hotel1
venue1.recommended_hotels << hotel2
venue1.recommended_hotels << hotel3
venue2.recommended_hotels << hotel4
venue2.recommended_hotels << hotel5
venue2.recommended_hotels << hotel6
venue2.recommended_hotels << hotel7
venue3.recommended_hotels << hotel8
venue3.recommended_hotels << hotel1
venue3.recommended_hotels << hotel9

person1 = Person.create! name: "Jill"
person2 = Person.create! name: "Jack"

Registration.create! person: person1, event: event1, amount_paid: 250
Registration.create! person: person2, event: event1, amount_paid: 200
Registration.create! person: person2, event: event2, amount_paid:  10
