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
  # TODO: Write this
end

get "/shipping" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  halt erb(:shipping)
end

post "/shipping" do
  # TODO: Write this
end

get "/billing" do
  @customer = Customer.first
  @u_s_states = USState.order(:name).all

  halt erb(:billing)
end

post "/billing" do
  # TODO: Write this
end

get "/review" do
  @customer = Customer.first

  halt erb(:review)
end

post "/review" do
  # TODO: Write this
end

get "/thank_you" do
  halt erb(:thank_you)
end
