require '../dvc-sinatra.rb'

get "/" do
  halt erb(:main)
end

get "/place_order" do
  @dishes = Dish.order(:id).all
  halt erb(:place_order)
end

post "/place_order" do
  order = Order.new
  order.table_number = params["table_number"]
  order.total_price = 0.0
  order.save!

  Dish.all.each do |dish|
    quantity = params["quantity_for_dish_#{dish.id}"]
    if quantity != ""
      line = LineItem.new
      line.dish_id = dish.id
      line.order_id = order.id
      line.line_price = dish.price * quantity.to_i
      line.quantity = quantity
      line.save!

      order.total_price = order.total_price + line.line_price
    end
  end
  order.save!

  redirect "/"
end

get "/orders" do
  @orders = Order.order(:id).all
  halt erb(:orders)
end

get "/dishes" do
  @dishes = Dish.order(:id).all
  halt erb(:dishes)
end
