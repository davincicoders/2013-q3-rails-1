require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  # TODO: write this
end

get "/followers" do
  # TODO: write this
end

post "/followers" do
  # TODO: write this
end

get "/logout" do
  session.clear
  redirect "/"
end
