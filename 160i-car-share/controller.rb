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
#  redirect "/reservations/1"
  halt erb(:login)
end

get "/reservations/1" do
  halt erb(:reservations)
end
