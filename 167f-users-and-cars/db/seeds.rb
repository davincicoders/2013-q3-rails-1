user = User.create(username: "Dale")
user.cars << Car.create(model: "Jetta")

user = User.create(username: "Fran")
user.cars << Car.create(model: "Element")
user.cars << Car.create(model: "F-150")

user = User.create(username: "Ella")
