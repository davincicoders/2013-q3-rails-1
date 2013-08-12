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

  member_id = 1
  member = Member.find(member_id)
  if @username == member.username
    redirect "/reservations/#{member_id}"
  end
    
  member_id = 2
  member = Member.find(member_id)
  if @username == member.username
    redirect "/reservations/#{member_id}"
  end
  
  halt erb(:login)

end

get "/reservations/1" do
  halt erb(:reservations)
end
