require '../dvc-sinatra.rb'

get "/" do
  @tables = Table.order(:id).all
  @orders = Order.order("id desc").all
  halt erb(:main)
end

post "/" do
  Table.all.each do |table|
    if params[:commit] == "Occupy table #{table.id}"
      order             = Order.new
      order.table_id    = table.id
      order.is_paid     = false
      order.total_price = BigDecimal(0)
      order.save!
    end
  end
  redirect "/"
end

get "/order/:id" do
  @order = Order.find(params[:id])
  @line = OrderLine.new # because error_messages_for expects @line
  halt erb(:order)
end

post "/order/:id" do
  @order = Order.find(params[:id])

  if params[:commit] == "Add Entree"
    @line = OrderLine.new
    @line.order_id = @order.id
    @line.entree_id = params[:entree_id]
    @line.chair_number = params[:chair_number]
    if params[:chair_number].to_i < 1
      flash.now[:error] = "Invalid chair number"
      halt erb(:order)
    elsif params[:chair_number].to_i > @order.table.number_of_chairs
      flash.now[:error] =
        "This table only has #{@order.table.number_of_chairs} chairs"
      halt erb(:order)
    elsif @line.save == false
      halt erb(:order)
    end

    entree = Entree.find(params[:entree_id])
    @order.total_price = @order.total_price + entree.price
    @order.save!

    redirect "/order/#{@order.id}"
  elsif params[:commit] == "Pay and Close"
    @order.is_paid = true
    @order.save!
    redirect "/"
  end
end
