Person.create(id: 1, gender: "female", name: "Sally")
Person.create(id: 2, gender: "male",   name: "Charlie")
Person.create(id: 3, gender: "male",   name: "Linus")
Person.create(id: 4, gender: "female", name: "Patty")
Person.create(id: 5, gender: "male",   name: "Snoopy")

Following.create(from_person_id: 2, to_person_id: 3)
Following.create(from_person_id: 3, to_person_id: 5)
