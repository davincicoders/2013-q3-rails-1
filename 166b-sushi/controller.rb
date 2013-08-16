require '../dvc-sinatra.rb'

get "/" do
  halt erb(:main)
end

get "/place_order" do
  @dishes = Dish.order(:id).all
  halt erb(:place_order)
end

post "/place_order" do
  # TODO: Write this

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
