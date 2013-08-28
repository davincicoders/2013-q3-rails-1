harry = Person.create! name: "Harry"
sally = Person.create! name: "Sally"

flight312 = Flight.create! airline: "US Airways", number: "312",
  destination_city: "Cancun", arrival_date: "2013-09-01"
flight54  = Flight.create! airline: "Delta", number: "54",
  destination_city: "New York", arrival_date: "2013-09-18"
flight99  = Flight.create! airline: "Virgin Airlines", number: "99",
  destination_city: "Frankfurt", arrival_date: "2013-11-07"
