require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do 
  halt erb(:login)
end

post "/login" do
#  redirect "/reservations/1"
  halt erb(:login)
end

get "/reservations/1" do
  halt erb(:reservations)
end
