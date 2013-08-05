require '../dvc-sinatra.rb'

get "/" do
  @customer = Customer.first

  halt erb(:main)
end

get "/sign_up" do
  @customer = Customer.first

  halt erb(:sign_up)
end

post "/sign_up" do
  @customer = Customer.first

  if params[:commit] == "Go back"
    redirect "/"
  elsif params[:commit] == "Continue"
    @customer.first_name = params[:first_name]
    @customer.last_name  = params[:last_name]
    if @customer.save
      redirect "/shipping"
    else
      halt erb(:sign_up)
    end
  end
end

get "/shipping" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  halt erb(:shipping)
end

post "/shipping" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  if params[:commit] == "Go back"
    redirect "/sign_up"
  elsif params[:commit] == "Continue"
    if params[:ship_speed] == nil
      @customer.ship_speed = "" # just so validation fails
    else
      @customer.ship_speed = params[:ship_speed]
    end
    @customer.ship_address1  = params[:address1]
    @customer.ship_city      = params[:city]
    @customer.ship_state     = params[:state]
    @customer.ship_zip_code  = params[:zip_code]
    if @customer.save
      redirect "/billing"
    else
      halt erb(:shipping)
    end
  end
end

get "/billing" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  halt erb(:billing)
end

post "/billing" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  if params[:commit] == "Go back"
    redirect "/shipping"
  elsif params[:commit] == "Continue"
    if params[:same_as_ship] != nil
      @customer.bill_address_same_as_ship = true
      @customer.bill_address1 = @customer.ship_address1
      @customer.bill_city     = @customer.ship_city
      @customer.bill_state    = @customer.ship_state
      @customer.bill_zip_code = @customer.ship_zip_code
    else
      @customer.bill_address_same_as_ship = false
      @customer.bill_address1 = params[:address1]
      @customer.bill_city     = params[:city]
      @customer.bill_state    = params[:state]
      @customer.bill_zip_code = params[:zip_code]
    end
    if @customer.save
      redirect "/review"
    else
      halt erb(:billing)
    end
  end
end

get "/review" do
  @customer = Customer.first

  halt erb(:review)
end

post "/review" do
  @customer = Customer.first

  if params[:commit] == "Go back"
    redirect "/billing"
  elsif params[:commit] == "Start over"
    @customer.destroy
    Customer.create
    redirect "/"
  elsif params[:commit] == "Place order"
    redirect "/thank_you"
  end
end

get "/thank_you" do
  halt erb(:thank_you)
end
