place1 = Place.create! name: "On the beach"
place2 = Place.create! name: "In the ocean"
place3 = Place.create! name: "In a cave"

Trail.create! from: place1, direction: "west", to: place2
Trail.create! from: place2, direction: "east", to: place1
Trail.create! from: place1, direction: "east", to: place3
