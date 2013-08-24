Car.create(color: "red",   model: "VW Golf")
Car.create(color: "black", model: "VW Jetta")
Car.create(color: "white", model: "Toyota Celica")

Member.create(username: "jen", password: "123")
Member.create(username: "ted", password: "456")

car = Car.where(model: "VW Jetta").first
car.reserving_member_id = Member.where(username: "jen").first.id
car.save!
