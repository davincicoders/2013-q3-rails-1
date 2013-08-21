Person.create! id: 1, name: "Sally",   password: "S"
Person.create! id: 2, name: "Charlie", password: "C"
Person.create! id: 3, name: "Linus",   password: "L"
Person.create! id: 4, name: "Patty",   password: "P"
Person.create! id: 5, name: "Snoopy",  password: "S"

Following.create! from_person_id: 2, to_person_id: 3
Following.create! from_person_id: 3, to_person_id: 5
