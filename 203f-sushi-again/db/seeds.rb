Dish.create(id: 1, name: 'Tuna',             price: 5.00)
Dish.create(id: 2, name: 'Salmon',           price: 4.75)
Dish.create(id: 3, name: 'Yellowtail',       price: 5.25)
Dish.create(id: 4, name: 'Super White Tuna', price: 4.50)
Dish.create(id: 5, name: 'Squid',            price: 4.50)
Dish.create(id: 6, name: 'Mackerel',         price: 4.00)
Dish.create(id: 7, name: 'Flying Fish Roe',  price: 4.25)

order = Order.create(table_number: 4, total_price: 14.50)
order.line_items << LineItem.create(dish_id: 1, quantity: 2, line_price: 10.00)
order.line_items << LineItem.create(dish_id: 5, quantity: 1, line_price:  4.50)

order = Order.create(table_number: 7, total_price: 13.50)
order.line_items << LineItem.create(dish_id: 5, quantity: 3, line_price: 13.50)

Admin.create! username: "bob", password: "123", password_confirmation: "123"
Admin.create! username: "sue", password: "234", password_confirmation: "234"
