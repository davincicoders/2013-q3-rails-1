require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do 
  halt erb(:login)
end

post "/login" do
  given_username = params[:username]
  given_password = params[:password]

  @member = Member.where(username: given_username).first

  if @member == nil
    @error = "Unknown username"
    halt erb(:login)
  elsif given_password != @member.password
    @error = "Wrong password"
    halt erb(:login)
  else
    session[:car_share_member_id] = @member.id
    redirect "/reservations/#{@member.id}"
  end
end

get "/reservations/:member_id" do
  member_id = params[:member_id]
  @member = Member.find(member_id)
  @reserved_cars = Car.where(reserving_member_id: @member.id).all
  halt erb(:reservations)
end

post "/reservations/:member_id" do
  member_id = params[:member_id]
  member = Member.find(member_id)

  if params[:commit] == "Logout"
    redirect "/login"
  end

  Car.all.each do |car|
    if params[:commit] == "Return car #{car.id}"
      car.reserving_member_id = nil
      car.save!
    end
  end

  Car.all.each do |car|
    if params[:commit] == "Reserve car #{car.id}"
      car.reserving_member_id = member_id
      car.save!
    end
  end

  redirect "/reservations/#{member_id}"
end
