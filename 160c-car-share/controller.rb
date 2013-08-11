require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do 
  halt erb(:login)
end

get "/reservations/1" do
  halt erb(:reservations)
end
