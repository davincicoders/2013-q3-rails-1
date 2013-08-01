require '../dvc-sinatra.rb'

get "/" do
  redirect "/1"
end

get "/1" do
  # TODO: Write this part
end

post "/1" do
  # TODO: Write this part
end

get "/2" do
  # TODO: Write this part
end

post "/2" do
  # TODO: Write this part
end

get "/done" do
  halt erb(:done)
end
