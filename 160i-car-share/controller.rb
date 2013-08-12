require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do 
  @username = params[:username]
  halt erb(:login)
end

post "/login" do
  @username = params[:username]

  [1, 2].each do |member_id|
    member = Member.find(member_id)
    if @username == member.username
      redirect "/reservations/#{member_id}"
    end
  end
  
  halt erb(:login)

end

get "/reservations/1" do
  halt erb(:reservations)
end
